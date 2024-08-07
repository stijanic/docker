// Hello World server
// Binds REP socket to tcp://*:5555
// Expects "Hello" from client, replies with "world"

var zeromq = require('zeromq');

// socket to talk to clients
var responder = zeromq.socket('rep');

responder.on('message', function(request) {
  console.log("Received request: [", request.toString(), "]");

  // do some 'work'
  setTimeout(function() {

    // send reply back to client.
    responder.send("World");
  }, 0);
});

responder.bind('tcp://*:5555', function(err) {
  if (err) {
    console.log(err);
  } else {
    console.log("Listening on 5555...");
  }
});

//responder.bindSync('ipc:///tmp/socket', function(err) {
//  if (err) {
//    console.log(err);
//  } else {
    //console.log("Listening on 5555...");
//    console.log("Listening on /tmp/socket...");
//  }
//});

process.on('SIGINT', function() {
  responder.close();
});
