var http = require('http');
var map = require('through2-map');

var server = http.createServer(function (req, res) {
    // request handling logic...
    if (req.method != 'POST') {
		return res.end('Send me a POST\n');
    }

	req.pipe(map(function (chunk) {
    	return chunk.toString().toUpperCase();
    })).pipe(res);
});

server.listen(8080);
