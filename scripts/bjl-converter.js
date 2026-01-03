/* ============================================================
   BJLConverter – Browser Bundle
   No Node.js, no filesystem, fully in-memory
   Requires: pako (gzip)
   ============================================================ */

/* ---------- Utilities ---------- */

function toUint8(data) {
  if (data instanceof Uint8Array) return data;
  if (data instanceof ArrayBuffer) return new Uint8Array(data);
  return new Uint8Array(data.buffer);
}

function concatBytes(...arrays) {
  const len = arrays.reduce((s, a) => s + a.length, 0);
  const out = new Uint8Array(len);
  let off = 0;
  for (const a of arrays) {
    out.set(a, off);
    off += a.length;
  }
  return out;
}

/* ---------- Binary Reader ---------- */

class BinaryReader {
  constructor(bytes) {
    this.buffer = toUint8(bytes);
    // Respect potential subarray views (byteOffset/byteLength) to avoid misaligned reads.
    this.view = new DataView(this.buffer.buffer, this.buffer.byteOffset, this.buffer.byteLength);
    this.offset = 0;
  }

  readByte() {
    return this.view.getUint8(this.offset++);
  }

  readSignedByte() {
    return this.view.getInt8(this.offset++);
  }

  readInt() {
    const v = this.view.getInt32(this.offset, true);
    this.offset += 4;
    return v;
  }

  readFloat() {
    const v = this.view.getFloat32(this.offset, true);
    this.offset += 4;
    return v;
  }

  readBytes(len) {
    const b = this.buffer.slice(this.offset, this.offset + len);
    this.offset += len;
    return b;
  }
}

/* ---------- Binary Writer ---------- */

class BinaryWriter {
  constructor(size = 1024 * 1024) {
    this.buffer = new Uint8Array(size);
    this.view = new DataView(this.buffer.buffer);
    this.offset = 0;
  }

  ensure(len) {
    if (this.offset + len <= this.buffer.length) return;
    const n = new Uint8Array((this.buffer.length + len) * 2);
    n.set(this.buffer);
    this.buffer = n;
    this.view = new DataView(n.buffer);
  }

  writeByte(v) {
    this.ensure(1);
    this.view.setUint8(this.offset++, v & 0xff);
  }

  writeInt(v) {
    this.ensure(4);
    this.view.setInt32(this.offset, v | 0, true);
    this.offset += 4;
  }

  writeFloat(v) {
    this.ensure(4);
    this.view.setFloat32(this.offset, v, true);
    this.offset += 4;
  }

  writeBytes(bytes) {
    bytes = toUint8(bytes);
    this.ensure(bytes.length);
    this.buffer.set(bytes, this.offset);
    this.offset += bytes.length;
  }

  updateInt(offset, v) {
    this.view.setInt32(offset, v | 0, true);
  }

  getBuffer() {
    return this.buffer.slice(0, this.offset);
  }
}

/* ---------- Compression ---------- */

class CompressedStreams {
  CompressBytes(bytes) {
    return pako.gzip(bytes, { level: 9, mtime: 0 });
  }
  DecompressBytes(bytes) {
    return pako.ungzip(bytes);
  }
}

/* ---------- TYPE CODES ---------- */

const TYPE_CODES = {
  CINT: 1,
  CSTRING: 2,
  CMAP: 3,
  ENDOFMAP: 4,
  BOOL: 5,
  CCOLOR: 6,
  CFLOAT: 7,
  CACHED_STRING: 9,
  RECT32: 11,
  CNULL: 12,
};

/* ---------- BJLConverter ---------- */

class BJLConverter {
  constructor(toBil = false) {
    this.toBil = toBil;
    this.compressor = new CompressedStreams();
  }

  async convertBjlToJsonFromFile(file) {
    if (!file || typeof file.arrayBuffer !== 'function') {
      throw new TypeError('convertBjlToJsonFromFile expects a File/Blob with arrayBuffer()');
    }
    const bytes = new Uint8Array(await file.arrayBuffer());
    return this.convertBjlToJsonFromBytes(bytes);
  }

  async convertBjlToJsonFromBytes(bytes) {
    const reader = new BinaryReader(bytes);
    const header = this._readLayoutHeader(reader);

    if (header.Version < 3) {
      throw new Error("Unsupported BJL version");
    }

    const design = {
      LayoutHeader: header,
      Variants: [],
      Data: {},
      FontAwesome: false,
      MaterialIcons: false,
    };

    const cache = this._loadStringsCache(reader);
    const variantCount = reader.readInt();

    for (let i = 0; i < variantCount; i++) {
      design.Variants.push({
        Scale: reader.readFloat(),
        Width: reader.readInt(),
        Height: reader.readInt(),
      });
    }

    design.Data = this._readMap(reader, cache);

    reader.readInt(); // footer padding
    design.FontAwesome = reader.readSignedByte() === 1;
    design.MaterialIcons = reader.readSignedByte() === 1;

    return design;
  }

  async convertJsonToBjlToBytes(json) {
    const writer = new BinaryWriter();
    const variants = json.Variants || [];

    this._writeLayoutHeader(json.LayoutHeader || {}, writer, variants);
    this._writeAllLayout(writer, variants, json.Data || {}, json.LayoutHeader || {});

    writer.writeByte(json.FontAwesome ? 1 : 0);
    writer.writeByte(json.MaterialIcons ? 1 : 0);

    return writer.getBuffer();
  }

  /* ---------- Internal helpers (same logic as Node version) ---------- */

  _readMap(reader, cache) {
    const map = {};
    while (true) {
      const key = this._readCachedString(reader, cache);
      const type = reader.readSignedByte();

      if (type === TYPE_CODES.ENDOFMAP) break;

      let value;
      switch (type) {
        case TYPE_CODES.CINT:
          value = reader.readInt();
          break;
        case TYPE_CODES.CACHED_STRING:
          value = this._readCachedString(reader, cache);
          break;
        case TYPE_CODES.CFLOAT:
          value = { ValueType: type, Value: reader.readFloat() };
          break;
        case TYPE_CODES.CSTRING:
          value = { ValueType: type, Value: this._readString(reader) };
          break;
        case TYPE_CODES.BOOL:
          value = reader.readSignedByte() === 1;
          break;
        case TYPE_CODES.CMAP:
          value = this._readMap(reader, cache);
          break;
        case TYPE_CODES.CNULL:
          value = { ValueType: type };
          break;
        case TYPE_CODES.CCOLOR: {
          const d = reader.readBytes(4);
          value = { ValueType: type, Value: '0x' + this._hexFromBytes(d) };
          break;
        }
        case TYPE_CODES.RECT32: {
          const d = reader.readBytes(8);
          const shorts = [];
          const v = new DataView(d.buffer);
          for (let i = 0; i < 8; i += 2) shorts.push(v.getInt16(i, true));
          value = { ValueType: type, Value: shorts };
          break;
        }
        default:
          // Match Node behavior: stop on unknown type code.
          return map;
      }

      map[key] = value;
    }
    return map;
  }

  _readLayoutHeader(reader) {
    const h = {
      Version: 0,
      GridSize: 10,
      ControlsHeaders: [],
      Files: [],
      DesignerScript: [],
    };

    const version = reader.readInt();
    h.Version = version;

    if (version < 3) {
      return h;
    }

    reader.offset += 4;
    if (version >= 4) h.GridSize = reader.readInt();

    const cache = this._loadStringsCache(reader);
    const cCount = reader.readInt();

    for (let i = 0; i < cCount; i++) {
      h.ControlsHeaders.push({
        Name: this._readCachedString(reader, cache),
        JavaType: this._readCachedString(reader, cache),
        DesignerType: this._readCachedString(reader, cache),
      });
    }

    const fCount = reader.readInt();
    for (let i = 0; i < fCount; i++) h.Files.push(this._readString(reader));

    // IMPORTANT: BJL header includes a (gzipped) designer script section.
    // Skipping it misaligns the reader and eventually causes DataView out-of-bounds.
    h.DesignerScript = this._readScripts(reader);

    return h;
  }

  _collectStringsInOrder(data, cache, order) {
    if (!data || typeof data !== 'object') return;

    if (Array.isArray(data)) {
      for (const item of data) {
        this._collectStringsInOrder(item, cache, order);
      }
    } else {
      for (const key of Object.keys(data)) {
        if (!(key in cache)) {
          cache[key] = Object.keys(cache).length;
          order.push(key);
        }

        const val = data[key];
        if (typeof val === 'object' && val !== null) {
          if (val.ValueType === undefined) {
            this._collectStringsInOrder(val, cache, order);
          } else if (val.ValueType === TYPE_CODES.CSTRING && typeof val.Value === 'string') {
            if (!(val.Value in cache)) {
              cache[val.Value] = Object.keys(cache).length;
              order.push(val.Value);
            }
          }
        } else if (typeof val === 'string') {
          if (!(val in cache)) {
            cache[val] = Object.keys(cache).length;
            order.push(val);
          }
        }
      }
    }
  }

  _readScripts(reader) {
    const len = reader.readInt();
    const rawData = reader.readBytes(len);

    try {
      const decompressed = pako.ungzip(rawData);
      const script = new BinaryReader(decompressed);

      const res = [];
      res.push(this._readBinaryString(script)); // general

      const NumberOfVariants = script.readInt();
      for (let i = 0; i < NumberOfVariants; i++) {
        this._readVariantFromStream(script);
        res.push(this._readBinaryString(script));
      }

      return res;
    } catch (_e) {
      // If scripts are missing/uncompressed/invalid, keep going.
      return [];
    }
  }

  _readBinaryString(reader) {
    let length = 0;
    let shift = 0;

    while (true) {
      const b = reader.readSignedByte();
      const value = b & 0x7f;
      length += value << shift;
      if (b === value) break;
      shift += 7;
    }

    const data = reader.readBytes(length);
    return new TextDecoder().decode(data);
  }

  _writeScripts(scripts, variants) {
    const writer = new BinaryWriter();
    let scriptIdx = 0;
    const scriptsCopy = [...scripts];

    this._writeBinaryString(writer, scriptsCopy[scriptIdx++] || "");
    writer.writeInt(variants.length);
    for (const v of variants) {
      writer.writeFloat(v.Scale || 1);
      writer.writeInt(v.Width || 0);
      writer.writeInt(v.Height || 0);
      this._writeBinaryString(writer, scriptsCopy[scriptIdx++] || "");
    }

    const uncompressed = writer.getBuffer();
    // Deterministic gzip options to match the Node version.
    return pako.gzip(uncompressed, { level: 9, mtime: 0 });
  }

  _writeBinaryString(writer, s) {
    // Match Node behavior: length is based on JS string length (not UTF-8 byte length).
    const text = String(s ?? "");
    const raw = new TextEncoder().encode(text);
    let len = text.length;

    while (true) {
      let b = len & 0x7f;
      len >>>= 7;
      if (len !== 0) b |= 0x80;
      writer.writeByte(b);
      if (len === 0) break;
    }

    writer.writeBytes(raw);
  }

  _readVariantFromStream(reader) {
    return {
      Scale: reader.readFloat(),
      Width: reader.readInt(),
      Height: reader.readInt(),
    };
  }

  _writeVariant(writer, v) {
    writer.writeFloat(v.Scale || 1);
    writer.writeInt(v.Width || 0);
    writer.writeInt(v.Height || 0);
  }

  _loadStringsCache(reader) {
    const count = reader.readInt();
    const arr = new Array(count);
    for (let i = 0; i < count; i++) arr[i] = this._readString(reader);
    return arr;
  }

  _readCachedString(reader, cache) {
    if (!cache || cache.length === 0) return this._readString(reader);
    return cache[reader.readInt()];
  }

  _readString(reader) {
    const len = reader.readInt();
    return new TextDecoder().decode(reader.readBytes(len));
  }

  _writeString(writer, s) {
    const b = new TextEncoder().encode(s);
    writer.writeInt(b.length);
    writer.writeBytes(b);
  }

  _writeStringsCacheInOrder(writer, _cache, order) {
    writer.writeInt(order.length);
    for (const str of order) {
      this._writeString(writer, str);
    }
  }

  _writeTempToMain(tempWriter, mainWriter) {
    mainWriter.writeBytes(tempWriter.getBuffer());
  }

  _writeCachedString(writer, cache, s) {
    if (!cache || Object.keys(cache).length === 0) {
      this._writeString(writer, s);
    } else {
      if (Object.prototype.hasOwnProperty.call(cache, s)) {
        writer.writeInt(cache[s]);
      } else {
        throw new Error(`String not in cache: "${s}". Cache is strictly bounded.`);
      }
    }
  }

  _hexFromBytes(data) {
    return Array.from(toUint8(data))
      .map(b => b.toString(16).padStart(2, '0'))
      .join('')
      .toUpperCase();
  }

  _hexToBytes(hex) {
    const clean = String(hex || '').replace(/[^0-9a-fA-F]/g, '');
    const out = new Uint8Array(clean.length / 2);
    for (let i = 0; i < clean.length; i += 2) {
      out[i / 2] = parseInt(clean.substring(i, i + 2), 16);
    }
    return out;
  }

  _shortsFromBytes(data) {
    const bytes = toUint8(data);
    const v = new DataView(bytes.buffer, bytes.byteOffset, bytes.byteLength);
    const shorts = [];
    for (let i = 0; i < bytes.length; i += 2) {
      shorts.push(v.getInt16(i, true));
    }
    return shorts;
  }

  _shortsToBytes(shorts) {
    const out = new Uint8Array(shorts.length * 2);
    const v = new DataView(out.buffer);
    for (let i = 0; i < shorts.length; i++) {
      v.setInt16(i * 2, shorts[i], true);
    }
    return out;
  }

  _writeLayoutHeader(header, writer, variants) {
    const version = header?.Version || 4;
    writer.writeInt(version);

    const headerSizePosition = writer.offset;
    writer.writeInt(0);

    if (version >= 4) {
      writer.writeInt(header?.GridSize || 10);
    }

    // Build strings cache from control headers (matches Node implementation)
    const cache = {};
    const controlsHeaders = header?.ControlsHeaders || [];

    for (const c of controlsHeaders) {
      if (!(c.Name in cache)) cache[c.Name] = Object.keys(cache).length;
      if (!(c.JavaType in cache)) cache[c.JavaType] = Object.keys(cache).length;
      if (!(c.DesignerType in cache)) cache[c.DesignerType] = Object.keys(cache).length;
    }

    const tempWriter = new BinaryWriter();
    tempWriter.writeInt(controlsHeaders.length);
    for (const c of controlsHeaders) {
      this._writeCachedString(tempWriter, cache, c.Name);
      this._writeCachedString(tempWriter, cache, c.JavaType);
      this._writeCachedString(tempWriter, cache, c.DesignerType);
    }

    const cacheKeys = Object.keys(cache);
    writer.writeInt(cacheKeys.length);
    for (const k of cacheKeys) {
      this._writeString(writer, k);
    }
    writer.writeBytes(tempWriter.getBuffer());

    const files = header?.Files || [];
    writer.writeInt(files.length);
    for (const f of files) {
      this._writeString(writer, f);
    }

    // Write script
    let scriptBytes = new Uint8Array(0);
    const ds = header?.DesignerScript;
    if (typeof ds === 'string') {
      try {
        const bin = atob(ds);
        const out = new Uint8Array(bin.length);
        for (let i = 0; i < bin.length; i++) out[i] = bin.charCodeAt(i) & 0xff;
        if (out.length > 0) out[0] = 31;
        scriptBytes = out;
      } catch (_e) {
        scriptBytes = new Uint8Array(0);
      }
    } else if (Array.isArray(ds)) {
      scriptBytes = toUint8(this._writeScripts(ds, variants || []));
    }

    writer.writeInt(scriptBytes.length);
    writer.writeBytes(scriptBytes);

    const finalPosition = writer.offset;
    const actualHeaderSize = finalPosition - headerSizePosition - 4;
    writer.updateInt(headerSizePosition, actualHeaderSize);
  }

  _writeAllLayout(writer, variants, data, _layoutHeader) {
    let cache = {};
    let cacheOrder = [];
    this._collectStringsInOrder(data, cache, cacheOrder);

    const tempWriter = new BinaryWriter();
    tempWriter.writeInt(variants.length);
    for (const v of variants) {
      this._writeVariant(tempWriter, v);
    }

    this._writeMap(tempWriter, data, cache);
    this._writeString(tempWriter, '');
    tempWriter.writeByte(TYPE_CODES.ENDOFMAP);

    this._writeStringsCacheInOrder(writer, cache, cacheOrder);
    this._writeTempToMain(tempWriter, writer);

    writer.writeInt(0);
  }

  _writeMap(writer, m, cache) {
    for (const k of Object.keys(m)) {
      const val = m[k];

      if (this.toBil && typeof val === 'object' && val !== null) {
        if (val.ValueType === TYPE_CODES.CNULL || val.ValueType === TYPE_CODES.RECT32) {
          continue;
        }
      }

      this._writeCachedString(writer, cache, k);

      if (typeof val === 'object' && val !== null) {
        if (val.ValueType !== undefined) {
          const b = val.ValueType;
          writer.writeByte(b);

          switch (b) {
            case TYPE_CODES.CSTRING:
              this._writeString(writer, val.Value);
              break;
            case TYPE_CODES.CFLOAT:
              writer.writeFloat(val.Value);
              break;
            case TYPE_CODES.CCOLOR: {
              const hexColor = val.Value;
              const data = this._hexToBytes(String(hexColor).substring(2));
              writer.writeBytes(data);
              break;
            }
            case TYPE_CODES.RECT32: {
              const shorts = val.Value;
              const data = this._shortsToBytes(shorts);
              writer.writeBytes(data);
              break;
            }
            case TYPE_CODES.CNULL:
              break;
          }
        } else {
          writer.writeByte(TYPE_CODES.CMAP);
          this._writeMap(writer, val, cache);
          this._writeString(writer, '');
          writer.writeByte(TYPE_CODES.ENDOFMAP);
        }
      } else if (typeof val === 'number' && Number.isInteger(val)) {
        writer.writeByte(TYPE_CODES.CINT);
        writer.writeInt(val);
      } else if (typeof val === 'string') {
        writer.writeByte(TYPE_CODES.CACHED_STRING);
        this._writeCachedString(writer, cache, val);
      } else if (typeof val === 'boolean') {
        writer.writeByte(TYPE_CODES.BOOL);
        writer.writeByte(val ? 1 : 0);
      } else if (val === null) {
        writer.writeByte(TYPE_CODES.CNULL);
      } else {
        throw new Error(`Unsupported value type: ${typeof val}`);
      }
    }
  }
}

/* ---------- Export ---------- */
window.BJLConverter = BJLConverter;