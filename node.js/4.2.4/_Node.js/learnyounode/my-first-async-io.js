var fs = require('fs');

var length = fs.readFile(process.argv[2], function callback(err, data) {
	//fs.readFile(process.argv[2], 'utf8', function callback(err, data) {...}
	var length = data.toString().split('\n').length - 1;

	console.log(length);
});

