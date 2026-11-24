routerAdd("POST", "/api/greenapi", (c) => {
    try {
        //get the data from the request
        const data = $apis.requestInfo(c).data
        //convert the data to a json string
        const jsonData = JSON.stringify(data)
        //get the collection
        const collection = $app.dao().findCollectionByNameOrId("pablo_incoming")
        //create a new record in the collection
        const record = new Record(collection, {
            "incoming": jsonData
        })
        //save the record to the database
        $app.dao().saveRecord(record)
        return c.json(200, { "greenapi": "Success" })
    } catch (err) {
        return c.json(400, { "greenapi": "Failure", "error": JSON.stringify(err) })
    }
}, $apis.activityLogger($app))