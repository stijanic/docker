var zmq = require('zmq'),

pub = zmq.socket('pub');

pub.bindSync('tcp://127.0.0.1:5555');
//pub.bindSync('ipc:///tmp/zmq.sock');

setInterval(function() {
	pub.send("I am polyglot! " + new Date());
}, 1000);