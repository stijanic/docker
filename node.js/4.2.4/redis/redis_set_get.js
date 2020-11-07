var redis = require("redis"),
    client = redis.createClient();

var i;

for (i = 0; i <= 1000; i++) {
	client.set("some key", "{test: " + i + "}");
	client.get("some key", function(err, reply) {
    		console.log(reply);
			client.end();
	});
};