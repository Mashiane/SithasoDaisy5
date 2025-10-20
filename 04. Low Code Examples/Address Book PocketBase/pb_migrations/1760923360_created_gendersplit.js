/// <reference path="../pb_data/types.d.ts" />
migrate((db) => {
  const collection = new Collection({
    "id": "rjbqkd8h98visbp",
    "created": "2025-10-20 01:22:40.207Z",
    "updated": "2025-10-20 01:22:40.207Z",
    "name": "gendersplit",
    "type": "view",
    "system": false,
    "schema": [
      {
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
      }
    ],
    "indexes": [],
    "listRule": null,
    "viewRule": null,
    "createRule": null,
    "updateRule": null,
    "deleteRule": null,
    "options": {
      "query": "select id,count(*) as records from contacts group by gender"
    }
  });

  return Dao(db).saveCollection(collection);
}, (db) => {
  const dao = new Dao(db);
  const collection = dao.findCollectionByNameOrId("rjbqkd8h98visbp");

  return dao.deleteCollection(collection);
})
