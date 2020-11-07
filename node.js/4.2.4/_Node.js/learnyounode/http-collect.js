var http = require('http');
var output = "";

http.get(process.argv[2], function (response) {
	response.setEncoding('utf8');

	response.on('error', function (data) {
		console.error(data);
	});

	response.on('end', function (data) {
		console.log(output.length);
		console.log(output);
	});

	response.on('data', function (data) {
		output += data;
	});
});