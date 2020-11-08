// http://127.0.0.1:8080/api/unixtime?iso=2013-08-10T12:10:15.474Z
// http://127.0.0.1:8080/api/parsetime?iso=2013-08-10T12:10:15.474Z

var http = require('http');
var url = require('url');

function parsetime (time) {
  return {
    hour: time.getHours(),
    minute: time.getMinutes(),
    second: time.getSeconds()
  };
};

function unixtime (time) {
  return {
  	unixtime : time.getTime()
  };
};

var server = http.createServer(function (req, res) {
	var parsedUrl = url.parse(req.url, true);
	var time = new Date(parsedUrl.query.iso);
	var result;

	if (parsedUrl.pathname == "/api/parsetime") {
	//if (/^\/api\/parsetime/.test(req.url)) {
		result = parsetime(time);
	} else if (parsedUrl.pathname == "/api/unixtime") {
	//} else if (/^\/api\/unixtime/.test(req.url)) {
		result = unixtime(time);
	};

	if (result) {
		res.writeHead(200, { 'Content-Type': 'application/json' });
		res.end(JSON.stringify(result));
	} else {
		res.writeHead(404);
		res.end();
	};
});

server.listen(process.env.PORT || Number(process.argv[2]));
