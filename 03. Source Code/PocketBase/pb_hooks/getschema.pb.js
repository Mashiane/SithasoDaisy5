/**
 * Custom API route to get the schema of a specific collection.
 *
 * @example
 * // Make a GET request to:
 * // http://127.0.0.1:8090/api/schema/posts
 * // Replace "posts" with the name of your collection.
 *
 * @param {string} collectionName The name or ID of the collection.
 * @returns {e.response} A JSON object with the collection's schema or an error.
 */
routerAdd("GET", "/api/schema/:collectionName", (c) => {
    const collectionName = c.pathParam("collectionName");

    let collection;

    try {
        // Use the application's DAO to find the collection by its name or ID
        collection = $app.dao().findCollectionByNameOrId(collectionName);
    } catch (err) {
        // If the collection is not found, return a 404 error
        return c.json(404, {
            "code": 404,
            "message": `Collection '${collectionName}' not found.`
        });
    }
    const schema = collection.schema;
    const schemaText = JSON.stringify(schema);
    const fieldList = JSON.parse(schemaText);

    const fileFieldNames = [];
    for (const field of fieldList) {
        // 3. If the field's type is exactly "file", add its name to our array.
        if (field.type === 'file') {
            fileFieldNames.push(field.name);
        }
    }

    // 4. Join the array of names into a single string, separated by commas.
    const resultString = fileFieldNames.join(',');

    const fieldsInfo = [];
    // The stringify output proves that `collection.schema` is the array of fields itself.
    // We can iterate over it directly.
    for (const field of fieldList) {
        fieldsInfo.push({
            name: field.name,
            type: field.type
        });
    }

    // Return a successful 200 OK response with the extracted schema info
    return c.json(200, {
        collectionId: collection.id,
        collectionName: collection.name,
        fields: fieldsInfo,
    });
});