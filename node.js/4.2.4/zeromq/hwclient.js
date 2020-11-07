// Hello World client
// Connects REQ socket to tcp://localhost:5555
// Sends "Hello" to server.

var zmq = require('zmq');

// socket to talk to server
console.log("Connecting to hello world server...");
var requester = zmq.socket('req');

var x = 0;
requester.on("message", function(reply) {
  //console.log("Received reply", x, ": [", reply.toString(), ']');
  x += 1;
  if (x === 999) {
    requester.close();
    console.log("Last received reply", x, ": [", reply.toString(), ']');
    process.exit(0);
  }
});

requester.connect("tcp://localhost:5555");
//requester.connect("ipc:///tmp/socket");

for (var i = 0; i < 1000; i++) {
  console.log("Sending request", i, '...');
  requester.send("Hello Node.js " + new Date());
}

process.on('SIGINT', function() {
  requester.close();
});
