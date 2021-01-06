// ALTER USER 'test'@'localhost' IDENTIFIED WITH mysql_native_password BY 'test';
var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'test',
  password : 'test',
  database : 'test'
});

connection.connect();

connection.query('SELECT * from t', function(err, rows, fields) {
  if (!err)
    console.log('The solution is: ', rows);
  else
    console.log('Error while performing Query: ', err);
});

connection.end();
