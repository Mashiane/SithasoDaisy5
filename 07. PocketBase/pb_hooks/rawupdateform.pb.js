// rawupdateform.pb.js - lean multipart UPDATE (skips RecordUpsertForm / validators / hooks)
// Matches the B4XDaisyPocketBase contract for /api/rawupdateform/{collection}/{id}.
// Method: PATCH (matches B4X ApiPatchMultipart).
// Lean: no RecordUpsertForm, no field validators, no OnRecordBefore/AfterUpdate hooks,
// no updateRule enforcement. Direct SQL UPDATE + direct file write. Superuser auth required.

routerAdd("PATCH", "/api/rawupdateform/:collection/:id", async (c) => {
    const collection = c.pathParam("collection");
    const id = c.pathParam("id");

    if (!collection || !id) {
        return c.json(400, { error: "Both collection and id path parameters are required" });
    }

    const dao = $app.dao();
    const coll = dao.findCollectionByNameOrId(collection);
    if (!coll) {
        return c.json(404, { error: "Collection not found" });
    }

    // --- Optional return fields (comma-separated form value, like rawupdate's body.fields) ---
    const returnFieldsRaw = c.request().formValue("fields") || "id,updated";
    const returnFields = returnFieldsRaw.split(",").map(f => f.trim()).filter(f => f.length > 0);
    if (returnFields.length === 0) returnFields.push("id", "updated");

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

    // --- Write files first; collect filenames for the SQL bindings ---
    const writtenFiles = [];
    function rollbackFiles() {
        for (const wf of writtenFiles) {
            try { $os.remove(wf.path); } catch (e) {}
        }
    }

    const fields = [];
    const bindings = {};

    for (const k of allFields) {
        if (k === "fields") continue;  // skip reserved key for return-field list
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

    // --- Add updated system field ---
    const now = new Date().toISOString();
    fields.push("updated");
    bindings["updated"] = now;

    // --- Build and run UPDATE ---
    const setClauses = fields.map(f => `${f} = {:${f}}`);
    const sql = `UPDATE ${collection} SET ${setClauses.join(", ")} WHERE id = {:id}`;

    try {
        $app.db().newQuery(sql).bind({ ...bindings, id: id }).execute();
    } catch (err) {
        rollbackFiles();
        return c.json(500, { success: false, record: { id: "" }, error: err.message });
    }

    // --- Fetch back the updated record (best-effort) ---
    const resultObj = {};
    returnFields.forEach(f => (resultObj[f] = ""));
    const result = new DynamicModel(resultObj);
    try {
        const selectSQL = `SELECT ${returnFields.join(", ")} FROM ${collection} WHERE id = {:id}`;
        $app.db().newQuery(selectSQL).bind({ id }).one(result);
    } catch (e) {
        // update succeeded but select failed - return what we have
    }

    return c.json(200, { success: true, record: result });
}, $apis.activityLogger($app));
