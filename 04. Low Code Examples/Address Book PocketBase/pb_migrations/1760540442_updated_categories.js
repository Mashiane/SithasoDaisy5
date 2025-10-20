/// <reference path="../pb_data/types.d.ts" />
migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("m9xdcbl211jru7b")

  // add
  collection.schema.addField(new SchemaField({
    "system": false,
    "id": "scqke1t7",
    "name": "color",
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

  return dao.saveCollection(collection)
}, (db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("m9xdcbl211jru7b")

  // remove
  collection.schema.removeField("scqke1t7")

  return dao.saveCollection(collection)
})
