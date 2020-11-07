var http = require('http');

http.get(8080, function (response) {
	response.setEncoding('utf8');

	response.on('error', function (data) {
		console.error(data);
	});

	response.on('data', function (data) {
		console.log(data);
	});
});
