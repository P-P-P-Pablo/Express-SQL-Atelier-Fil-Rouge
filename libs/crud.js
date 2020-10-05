const db = require("../db.js");
module.exports = {
  create: (table, data, next) => {
    let fields = Object.keys(data).join(",");
    data = Object.values(data)
      .map((item) => "'" + item + "'")
      .join(",");
    console.log(data);
    let req = `INSERT INTO ${table} (${fields}) VALUES (${data})`;
    db.query(req, null, next);
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
  update: (table, data, id, next, toggle = null) => {
    if (toggle !== undefined) {
      db.query(`UPDATE ${table} SET badguy = 1-badguy WHERE id=?`, [id], next);
    } else {
      db.query(`UPDATE ${table} SET ? WHERE id=?`, [data, id], next);
    }
  },
  delete: (table, data, next) => {
    let field = Object.keys(data);
    let value = Object.values(data);
    let req = `DELETE FROM ${table} WHERE ${field}=${value}`;
    db.query(req, null, next);
  },
};
