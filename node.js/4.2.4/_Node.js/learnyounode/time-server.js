var net = require('net')

function zeroFill(i) {
  return (i < 10 ? '0' : '') + i;
};

var server = net.createServer(function (socket) {
	var date = new Date();
	var time = zeroFill(date.getFullYear()) + '-'
	+ zeroFill(date.getMonth() + 1) + '-'
	+ zeroFill(date.getDate())  + ' '
	+ zeroFill(date.getHours()) + ':'
	+ zeroFill(date.getMinutes()) + '\n';

	socket.write(time);
	socket.end();
})

console.log('Listening on port: ' + Number(process.argv[2]));
server.listen(8080);
