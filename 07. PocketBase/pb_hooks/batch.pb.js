// batch.pb.js - batch endpoint for B4XDaisyPocketBase
// Matches the BATCH_CREATE / BATCH_ADD_CREATE|UPSERT|UPDATE|DELETE / BATCH_SEND contract
// in B4XDaisyPocketBase.bas. Set UseBatch=True on the B4A class to enable.

const MAX_BATCH_SIZE = 200;

routerAdd("POST", "/api/batch", async (c) => {
    try {
        if (!c.hasSuperuserAuth()) {
            return c.json(401, { error: "Unauthorized: superuser auth required" });
        }
        const data = $apis.requestInfo(c).data;
        const requests = data.requests;
        if (!Array.isArray(requests) || requests.length === 0) {
            return c.json(400, { error: "requests array is required and must not be empty" });
        }
        if (requests.length > MAX_BATCH_SIZE) {
            return c.json(400, { error: "batch size " + requests.length + " exceeds max " + MAX_BATCH_SIZE });
        }
        // --- Single transaction: rollback on any failure ---
        $app.db().newQuery("BEGIN").execute();
        const results = [];
        let hasError = false;
        try {
            for (const req of requests) {
                try {
                    const method = (req.method || "GET").toUpperCase();
                    const url = req.url || "";
                    const body = req.body || {};
                    if (method === "POST") {
                        results.push({ status: 200, body: executeInsert(url, body) });
                    } else if (method === "PATCH") {
                        results.push({ status: 200, body: executeUpdate(url, body) });
                    } else if (method === "PUT") {
                        results.push({ status: 200, body: body.id ? executeUpdate(url, body) : executeInsert(url, body) });
                    } else if (method === "DELETE") {
                        executeDelete(url);
                        results.push({ status: 204 });
                    } else {
                        results.push({ status: 400, body: { error: "Unsupported method: " + method } });
                        hasError = true;
                    }
                } catch (err) {
                    results.push({ status: 500, body: { error: err.message } });
                    hasError = true;
                }
            }
            if (hasError) {
                $app.db().newQuery("ROLLBACK").execute();
                // mark all successful ones as rolled_back
                for (const r of results) {
                    if (r.status === 200 || r.status === 204) {
                        r.status = 0;
                        r.body = { rolledBack: true };
                    }
                }
            } else {
                $app.db().newQuery("COMMIT").execute();
            }
        } catch (err) {
            $app.db().newQuery("ROLLBACK").execute();
            return c.json(500, { error: err.message, results: results });
        }
        return c.json(200, { results: results });
    } catch (err) {
        $app.db().newQuery("ROLLBACK").execute();
        return c.json(400, { error: err.message });
    }
}, $apis.activityLogger($app));

function parseRecordUrl(url) {
    const m = url.match(/^\/api\/collections\/([^/]+)\/records(?:\/([^/]+))?$/);
    if (!m) return null;
    return { collection: m[1], id: m[2] || null };
}

function executeInsert(url, body) {
    const p = parseRecordUrl(url);
    if (!p) throw new Error("Invalid URL: " + url);
    const coll = $app.dao().findCollectionByNameOrId(p.collection);
    if (!coll) throw new Error("Collection not found: " + p.collection);
    const record = new Record(coll);
    const now = new Date().toISOString();
    for (const key in body) {
        if (key === "id" && p.id) continue;  // URL id wins
        record.set(key, body[key]);
    }
    record.set("created", now);
    record.set("updated", now);
    if (p.id) record.set("id", p.id);
    $app.dao().saveRecord(record);
    return JSON.parse(JSON.stringify(record));
}

function executeUpdate(url, body) {
    const p = parseRecordUrl(url);
    if (!p || !p.id) throw new Error("PATCH requires id in URL: " + url);
    const coll = $app.dao().findCollectionByNameOrId(p.collection);
    if (!coll) throw new Error("Collection not found: " + p.collection);
    const record = $app.dao().findRecordById(coll, p.id);
    for (const key in body) {
        if (key === "id") continue;
        record.set(key, body[key]);
    }
    record.set("updated", new Date().toISOString());
    $app.dao().saveRecord(record);
    return JSON.parse(JSON.stringify(record));
}

function executeDelete(url) {
    const p = parseRecordUrl(url);
    if (!p || !p.id) throw new Error("DELETE requires id in URL: " + url);
    const coll = $app.dao().findCollectionByNameOrId(p.collection);
    if (!coll) throw new Error("Collection not found: " + p.collection);
    $app.dao().deleteRecord(coll, p.id);
}
