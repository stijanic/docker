var zeromq = require('zeromq'),

pub = zeromq.socket('pub');

pub.bindSync('tcp://127.0.0.1:5555');
//pub.bindSync('ipc:///tmp/zeromq.sock');

setInterval(function() {
	pub.send("I am polyglot! " + new Date());
}, 1000);
