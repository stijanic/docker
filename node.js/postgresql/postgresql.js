const { Client } = require('pg')

const conString = "postgres://test:test@localhost/test";

const client = new Client(conString)
client.connect()
client
  .query('SELECT * from yo')
  .then(result => console.log(result.rows))
  .catch(e => console.error(e.stack))

client
  .query('SELECT NOW() AS "theTime"')
  .then(result => console.log(result.rows))
  .catch(e => console.error(e.stack))
  .then(() => client.end())
