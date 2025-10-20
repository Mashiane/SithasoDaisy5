/// <reference path="../pb_data/types.d.ts" />
migrate((db) => {
  const dao = new Dao(db);
  const collection = dao.findCollectionByNameOrId("rjbqkd8h98visbp");

  return dao.deleteCollection(collection);
}, (db) => {
  const collection = new Collection({
    "id": "rjbqkd8h98visbp",
    "created": "2025-10-20 01:22:40.207Z",
    "updated": "2025-10-20 01:38:34.732Z",
    "name": "gendersplit",
    "type": "view",
    "system": false,
    "schema": [
      {
        "system": false,
        "id": "mpvnbo8b",
        "name": "letter",
        "type": "text",
        "required": false,
        "presentable": false,
        "unique": false,
        "options": {
          "min": null,
          "max": null,
          "pattern": ""
        }
      },
      {
        "system": false,
        "id": "rbi6te13",
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
      "query": "select id, letter, count(*) as records from contacts group by letter order by letter"
    }
  });

  return Dao(db).saveCollection(collection);
})
