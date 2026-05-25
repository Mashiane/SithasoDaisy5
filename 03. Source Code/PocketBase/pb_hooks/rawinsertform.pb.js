routerAdd("POST", "/api/rawinsertform/:collection/:id", async (c) => {
  const collection = c.pathParam("collection");
  const id = c.pathParam("id");
  const reqInfo = $apis.requestInfo(c);
  // --- External URLs ---
  const extscheme = c.scheme(); // "http" or "https"
  const exthost = c.request().host; // full host from the request
  let extport = null;
  if (exthost.includes(":")) {
    // if host has port
    extport = exthost.split(":")[1];
  } else {
    extport = extscheme === "https" ? "443" : "80";
  }

  // internal and external URLs
  const inhost = `127.0.0.1:${extport}`; // always use local host internally
  const BaseUrl = `${extscheme}://${inhost}`; // for local file fetches
  
  if (!collection || !id) {
    return c.json(400, {
      error: "Both collection and id path parameters are required",
    });
  }
  
  // --- Resolve collection ---
  const dao = $app.dao();
  const coll = dao.findCollectionByNameOrId(collection);
  if (!coll) {
    return c.json(404, { error: "Collection not found" });
  }
  // --- Optional return fields ---
  const returnFields = c.request().formValue("returnFields") || "id,created,updated";
  
  // --- Extract schema fields ---
  const schemaText = JSON.stringify(coll.schema);
  const fldList = JSON.parse(schemaText);
  //find all fields that are files
  const fileFields = [];
  const allFields = [];
  for (const field of fldList) {
    if (field.type === "file") {
      fileFields.push(field.name);
    } else {
      allFields.push(field.name);
    }
  }
  if (coll.type === "auth") {
    allFields.push(
          "id",
          "username",
          "email",
          "emailVisibility",
          "verified",
          "lastResetSentAt",
          "lastVerificationSentAt",
          "lastLogin",
          "created",
          "updated"
        );
  } else {
    // Base collection: add standard system fields
    allFields.push("id", "created", "updated");
  }

  // --- Prepare insert fields & bindings ---
  const fieldsArr = [];
  const bindings = {};
  // Iterate over all fields
  for (const k of allFields) {
    if (k === "returnFields") {
        continue; // skip these keys
    }
    const value = c.request().formValue(k); // returns null if missing
    if (value !== null && value !== undefined) {
        fieldsArr.push(k);
        bindings[k] = value;
    }
  }

  for (const k of fileFields) {
    if (k === "returnFields") {
        continue; // skip these keys
    }
    const fileResult = c.request().formFile(k);

    if (fileResult) {
        const [bytes, header] = fileResult;
        const fName = header.filename;
        console.log(fName)
        // Example: convert to PB File object
        const pbFile = $filesystem.fileFromMultipart(header);
        // Upload the file to the record
        try {
          //const uploaded = await $app.files.upload({file: pbFile, collection: coll.id, recordId: id});
          //const resp = await $filesystem.upload(bytes, fName);

          // Build target storage key including recordId if provided
          //const fileKey = `${BaseUrl}/api/files/${coll.id}/${id}/${fName}`
          //console.log(fileKey)

          // Upload file manually
          //const resp =  await $filesystem.uploadFile(bytes, fileKey);
          
          // Path to save the file manually
          const filePath = `pb_data/storage/${coll.id}/${id}/${fName}`;
          const dirPath = filePath.substring(0, filePath.lastIndexOf("/"));
          // 0o755 -> rwxr-xr-x (Owner: rwx, Group: rx, Other: rx)
          const permissions = 0o755;
          $os.mkdirAll(dirPath, permissions);
          const contentAsBytes = $ioutil.readAll(bytes);
          $os.writeFile(filePath, contentAsBytes, permissions);
          // Write the file to storage
          //await $filesystem.writeFile(filePath, bytes);

        
        } catch (err) {
          console.error(err);
        }
        //fieldsArr.push(k);
        //bindings[k] = uploaded;
    }
  }
 
    // --- Add required system fields ---
    const xnow = new Date().toISOString();
    for (const sys of ["id","created","updated"]) {
        if (!fieldsArr.includes(sys)) fieldsArr.push(sys);
    }
    bindings["id"] = id;
    bindings["created"] = xnow;
    bindings["updated"] = xnow;

    // --- Build and run insert ---
    const placeholders = fieldsArr.map((f) => `{:${f}}`);
    const sql = `INSERT INTO ${collection} (${fieldsArr.join(",")}) VALUES (${placeholders.join(",")})`;
    
try {
    await $app.db().newQuery(sql).bind(bindings).execute();
    // --- Validate return fields ---
    const returnFieldsArray = returnFields
      .split(",")
      .map((f) => f.trim())
      .filter((f) => allFields.includes(f) || ["id", "created"].includes(f));

    if (returnFieldsArray.length === 0) returnFieldsArray.push("id", "created");

    // --- Build result model ---
    const resultObj = {};
    returnFieldsArray.forEach((f) => (resultObj[f] = ""));
    const result = new DynamicModel(resultObj);

    // --- Fetch record with selected fields ---
    const selectSQL = `SELECT ${returnFieldsArray.join(", ")} FROM ${collection} WHERE id = {:id}`;
    await $app.db().newQuery(selectSQL).bind({ id }).one(result);

    return c.json(200, { success: true, record: result });
  } catch (err) {
    return c.json(500, { success: false, record: { id: "" }, error: err.message });
  }
});
