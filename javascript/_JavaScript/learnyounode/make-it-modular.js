var ls = require('./filtered-ls-module.js');

ls(process.argv[2].toString(), process.argv[3].toString(), function (err, list) {
	if (err) {
		return console.error('There was an error:', err);
	};

	list.forEach(function (file) {
    	console.log(file);
  	});
});
