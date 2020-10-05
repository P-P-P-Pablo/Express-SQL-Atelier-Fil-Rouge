const db = require("../db.js");
module.exports = {
  create: (table, data, next) => {
    let fields = Object.keys(data).join(",");
    let req = `INSERT INTO ${table} (${fields}) VALUES (?)`;
    data = Object.values(data);
    db.query(req, data, next);
  },
  read: (table, fields, next, options = {}) => {
    let where = "";
    let whereValue = null;
    if (options.filter !== undefined) {
      let field = Object.keys(options.filter); // ['category_id']
      if (options.like !== undefined) {
        where = ` WHERE  ${field[0]} LIKE ?`;
      } else if (options.sup !== undefined) {
        where = ` WHERE  ${field[0]}>=?`;
      } else if (options.inf !== undefined) {
        where = ` WHERE  ${field[0]}>=?`;
      } else {
        where = ` WHERE  ${field[0]}=?`;
      }

      whereValue = options.filter[field[0]]; // 32
    }
    fields = fields.join(",");
    let orderBy = "";
    if (options.sort !== undefined) {
      orderBy = `ORDER BY ${options.sort}`;
    }
    // SELECT nom, appellation FROM products WHERE category_id=34 ORDER BY prix ASC;
    let req = `SELECT ${fields} FROM ${table} ${where} ${orderBy}`;
    db.query(req, [whereValue], next);
  },
  update: (table, data, id, next) => {
    db.query(`UPDATE ${table} SET ? WHERE id=?`, [data, id], next);
  },
  delete: (table, id, next, options = {}) => {
    let where = "";
    let whereValue = null;
    if (options.filter !== undefined) {
      let field = Object.keys(options.filter); // ['category_id']
      where = ` WHERE  ${field[0]}=?`;
      whereValue = options.filter[field[0]]; // 32
    }
    fields = fields.join(",");

    let req = `DELETE FROM ${table} ${where}`;
    db.query(req, id, [whereValue], next);
  },
};
