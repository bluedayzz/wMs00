var mysql = require('mysql');
var db = mysql.createConnection({
  host:'127.0.0.1',
  user:'root',
  password:'!Mdlatjdwls81M!',
  database:'wmysqlm00'
});
db.connect();
module.exports = db;