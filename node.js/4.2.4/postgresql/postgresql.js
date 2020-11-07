var pg = require('pg');

var conString = "postgres://test:test@localhost/test";

var client = new pg.Client(conString);
client.connect(function(err) {
  if(err) {
    return console.error('could not connect to postgres', err);
  }
  client.query('SELECT NOW() AS "theTime"', function(err, result) {
    if(err) {
      return console.error('error running query', err);
    }
    console.log(result.rows[0].theTime);
    //output: Fri Jan 08 2016 03:57:20 GMT+0100 (CET)
    client.end();
  });
  client.query('SELECT * from yo', function(err, result) {
    if(err) {
      return console.error('error running query', err);
    }
    console.log(result.rows);
    //output: Fri Jan 08 2016 04:02:45 GMT+0100 (CET)
    client.end();
  });
});