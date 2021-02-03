var jsforce = require('jsforce');
var conn = new jsforce.Connection();
conn.login('stijanic@yahoo.fr', 'xyz123SF*wNy8MDEqugokvsULTUJt7K4u7', function(err, res) {
  if (err) { return console.error(err); }
  conn.query('SELECT Id, Name FROM Contact', function(err, res) {
    if (err) { return console.error(err); }
    console.log(res);
  });
});
