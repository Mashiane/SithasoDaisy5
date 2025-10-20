/// <reference path="../pb_data/types.d.ts" />
migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("rjbqkd8h98visbp")

  collection.options = {
    "query": "select id, gender, count(*) as records from contacts group by gender"
  }

  // remove
  collection.schema.removeField("uezt4i1z")

  // add
  collection.schema.addField(new SchemaField({
    "system": false,
    "id": "z4yw7y0c",
    "name": "gender",
    "type": "text",
    "required": false,
    "presentable": false,
    "unique": false,
    "options": {
      "min": null,
      "max": null,
      "pattern": ""
    }
  }))

  // add
  collection.schema.addField(new SchemaField({
    "system": false,
    "id": "w0rx32b4",
    "name": "records",
    "type": "number",
    "required": false,
    "presentable": false,
    "unique": false,
    "options": {
      "min": null,
      "max": null,
      "noDecimal": false
    }
  }))

  return dao.saveCollection(collection)
}, (db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("rjbqkd8h98visbp")

  collection.options = {
    "query": "select id,count(*) as records from contacts group by gender"
  }

  // add
  collection.schema.addField(new SchemaField({
    "system": false,
    "id": "uezt4i1z",
    "name": "records",
    "type": "number",
    "required": false,
    "presentable": false,
    "unique": false,
    "options": {
      "min": null,
      "max": null,
      "noDecimal": false
    }
  }))

  // remove
  collection.schema.removeField("z4yw7y0c")

  // remove
  collection.schema.removeField("w0rx32b4")

  return dao.saveCollection(collection)
})
