var zmq = require('zmq'),

sub = zmq.socket('sub');
sub.connect('tcp://127.0.0.1:5555');
//sub.connect('ipc:///tmp/zmq.sock');

sub.subscribe('');
sub.on('message', function(msg) {
	console.log('Received: ' + msg);
});