// rawinsertform.pb.js - lean multipart insert (skips RecordUpsertForm / validators / hooks)
// Matches the B4XDaisyPocketBase class contract for /api/rawinsertform/{collection}/{id}.
// Lean: no RecordUpsertForm, no field validators, no OnRecordBefore/After hooks, no
// createRule enforcement. Direct SQL INSERT + direct file write. Superuser auth required.

routerAdd("POST", "/api/rawinsertform/:collection/:id", async (c) => {
    const collection = c.pathParam("collection");
    const id = c.pathParam("id");

    if (!collection || !id) {
        return c.json(400, { error: "Both collection and id path parameters are required" });
    }

    if (!c.hasSuperuserAuth()) {
        return c.json(401, { error: "Unauthorized: superuser auth required" });
    }

    const dao = $app.dao();
    const coll = dao.findCollectionByNameOrId(collection);
    if (!coll) {
        return c.json(404, { error: "Collection not found" });
    }

    // --- Optional return fields (comma-separated form value) ---
    const returnFieldsRaw = c.request().formValue("returnFields") || "id,created,updated";
    const returnFields = returnFieldsRaw.split(",").map(f => f.trim()).filter(f => f.length > 0);
    if (returnFields.length === 0) returnFields.push("id", "created");

    // --- Extract schema fields ---
    const schemaText = JSON.stringify(coll.schema);
    const fldList = JSON.parse(schemaText);
    const fileFields = [];
    const allFields = [];
    for (const field of fldList) {
        if (field.type === "file") {
            fileFields.push(field.name);
        } else {
            allFields.push(field.name);
        }
    }
    // skip the reserved `returnFields` key in case the collection happens to have a field by that name
    const allFieldSet = new Set(allFields);
    allFieldSet.delete("returnFields");

    // --- Write files first; collect filenames for the SQL bindings ---
    // Track written files so we can roll back on insert failure.
    const writtenFiles = [];
    function rollbackFiles() {
        for (const wf of writtenFiles) {
            try { $os.remove(wf.path); } catch (e) {}
        }
    }

    const fields = [];
    const bindings = {};

    for (const k of allFields) {
        if (k === "returnFields") continue;
        const value = c.request().formValue(k);
        if (value !== null && value !== undefined) {
            fields.push(k);
            bindings[k] = value;
        }
    }

    for (const k of fileFields) {
        const fileResult = c.request().formFile(k);
        if (!fileResult) continue;
        const [bytes, header] = fileResult;
        const fName = header.filename;
        // Standard PB v0.22.50 local filesystem layout: pb_data/storage/{collectionId}/{recordId}/{filename}
        const filePath = `pb_data/storage/${coll.id}/${id}/${fName}`;
        const dirPath = filePath.substring(0, filePath.lastIndexOf("/"));
        try {
            $os.mkdirAll(dirPath, 0o755);
            $os.writeFile(filePath, bytes, 0o644);
        } catch (err) {
            rollbackFiles();
            return c.json(500, { success: false, record: { id: "" }, error: "File write failed: " + err.message });
        }
        writtenFiles.push({ field: k, path: filePath });
        fields.push(k);
        bindings[k] = fName;
    }

    // --- Add required system fields ---
    const now = new Date().toISOString();
    fields.push("id", "created", "updated");
    bindings["id"] = id;
    bindings["created"] = now;
    bindings["updated"] = now;

    // --- Build and run INSERT ---
    const placeholders = fields.map(f => `{:${f}}`);
    const sql = `INSERT INTO ${collection} (${fields.join(",")}) VALUES (${placeholders.join(",")})`;

    try {
        await $app.db().newQuery(sql).bind(bindings).execute();
    } catch (err) {
        rollbackFiles();
        return c.json(500, { success: false, record: { id: "" }, error: err.message });
    }

    // --- Fetch back the inserted record (best-effort) ---
    const resultObj = {};
    returnFields.forEach(f => (resultObj[f] = ""));
    const result = new DynamicModel(resultObj);
    try {
        const selectSQL = `SELECT ${returnFields.join(", ")} FROM ${collection} WHERE id = {:id}`;
        await $app.db().newQuery(selectSQL).bind({ id }).one(result);
    } catch (e) {
        // insert succeeded but select failed - return what we have
    }

    return c.json(200, { success: true, record: result });
}, $apis.activityLogger($app));
