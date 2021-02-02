var zeromq = require('zeromq'),

sub = zeromq.socket('sub');
sub.connect('tcp://127.0.0.1:5555');
//sub.connect('ipc:///tmp/zeromq.sock');

sub.subscribe('');
sub.on('message', function(msg) {
	console.log('Received: ' + msg);
});
