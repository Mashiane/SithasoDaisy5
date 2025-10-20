/// <reference path="../pb_data/types.d.ts" />
migrate((db) => {
  const collection = new Collection({
    "id": "1daky4v43mntrv7",
    "created": "2025-10-14 23:36:06.176Z",
    "updated": "2025-10-14 23:36:06.176Z",
    "name": "provinces",
    "type": "base",
    "system": false,
    "schema": [
      {
        "system": false,
        "id": "t2ytkhmy",
        "name": "name",
        "type": "text",
        "required": false,
        "presentable": false,
        "unique": false,
        "options": {
          "min": null,
          "max": null,
          "pattern": ""
        }
      }
    ],
    "indexes": [
      "CREATE UNIQUE INDEX `provinces_name` ON `provinces` (`name`)"
    ],
    "listRule": "",
    "viewRule": "",
    "createRule": "",
    "updateRule": "",
    "deleteRule": "",
    "options": {}
  });

  return Dao(db).saveCollection(collection);
}, (db) => {
  const dao = new Dao(db);
  const collection = dao.findCollectionByNameOrId("1daky4v43mntrv7");

  return dao.deleteCollection(collection);
})
