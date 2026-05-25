routerAdd(
  "POST",
  "/api/getfulllist",
  (c) => { 
    try {
      const helpers = require($filepath.join(__hooks, "helpers.js"));
      const reqInfo = $apis.requestInfo(c);
      const body = reqInfo.data || {};
      const scheme = c.scheme(); // "http" or "https"
      const host = c.request().host;
      const getFiles = body.getFiles || false;
      // Combine them to get the full base URL
      const baseUrl = `${scheme}://${host}`;

      const collection = body.collection;
      if (!collection) return c.json(400, { error: "Collection is required" });

      let coll;
      try {
        // Use the application's DAO to find the collection by its name or ID
        coll = $app.dao().findCollectionByNameOrId(collection);
      } catch (err) {
        // If the collection is not found, return a 404 error
        return c.json(404, {
          code: 404,
          message: `Collection '${collection}' not found.`,
        });
      }
      //get the schema of the collection
      const schema = coll.schema;
      const schemaText = JSON.stringify(schema);
      const fldList = JSON.parse(schemaText);
      const fileFields = [];
      for (const field of fldList) {
        if (field.type === "file") {
          fileFields.push(field.name);
        }
      }

      const perPage = parseInt(body.perPage) || 50;
      const fields = body.fields
        ? body.fields
            .split(",")
            .map((f) => f.trim())
            .filter((f) => f.length > 0)
        : ["*"];
      const sort = body.sort
        ? body.sort
            .split(",")
            .map((f) => f.trim())
            .filter((f) => f.length > 0)
        : [];
      const filter = body.filter
        ? body.filter
            .split(",")
            .map((f) => f.trim())
            .filter((f) => f.length > 0)
        : [];
      const ownFilter = body.ownFilter ? body.ownFilter.trim() : null;
      // --- Build ORDER BY clause ---
      let orderClause = "";
      if (sort.length > 0) {
        const orders = sort.map((f) => {
          let direction = "ASC";
          let fieldName = f;
          if (f.startsWith("-")) {
            fieldName = f.slice(1);
            direction = "DESC";
          }
          return `${fieldName} ${direction}`;
        });
        orderClause = " ORDER BY " + orders.join(", ");
      }

      // --- Build WHERE clause ---
      let conditions = [];

      if (ownFilter) {
        conditions.push(`${ownFilter}`);
      }

      if (filter.length > 0) {
        const wrappedFilters = filter.map((f) => `(${f})`);
        conditions.push(...wrappedFilters);
      }

      let whereClause = "";
      if (conditions.length > 0) {
        whereClause = " WHERE " + conditions.join(" AND ");
      }

      // --- Build SELECT clause ---
      const fieldList = fields.join(", ");

      // Build the model shape first
      const modelShape = {};
      fields.forEach((f) => (modelShape[f] = ""));
      fileFields.forEach((f) => (modelShape[`${f}url`] = ""));
      

      let offset = 0;
      let batch;
      let allRecords = [];

      do {
        const sql = `SELECT ${fieldList} FROM ${collection}${whereClause}${orderClause} LIMIT ${perPage} OFFSET ${offset}`;
        // Initialize DynamicModel with shape
        batch = arrayOf(new DynamicModel(modelShape));
        $app.db().newQuery(sql).all(batch);
        allRecords = allRecords.concat(batch);
        offset += parseInt(perPage);
      } while (batch.length > 0);

      // If we have file fields, we need to process them
      if (fileFields) {
        allRecords = allRecords.map((record) => {
          fileFields.forEach((field) => {
            const urlFieldName = `${field}url`;
            const fileFld = record[field];
            if (fileFld) {
              const idFld = record["id"];
              const fileUrl = `${baseUrl}/api/files/${collection}/${idFld}/${fileFld}`;
              record[urlFieldName] = fileUrl;
              if (getFiles){
                record[field] = helpers.fetchUrlAsDataUri(fileUrl);
              }
            } else {
              record[urlFieldName] = "";
            }
          });
          return record;
        });
      }

      // --- Total count ---
      let rowcount = allRecords.length;
      let totalPages = Math.ceil(rowcount / perPage);
      
      return c.json(200, {
        items: allRecords,
        totalItems: allRecords.length,
        totalPages,
        perPage
      });
    } catch (err) {
      return c.json(400, {
        items: [],
        error: err.message,
        totalItems: 0,
        totalPages,
        perPage
      });
    }
  },
  $apis.activityLogger($app)
);
