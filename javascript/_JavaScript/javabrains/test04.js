var a = 99;

var fn = function() {
	console.log(a);
}

setTimeout(fn, 1000); // postpone execution of function fn for 1 second

console.log("Done");


var i;

var print = function() {
	console.log(i);
};

for (i = 0; i < 10; i++) {
	//print();
	(function(ic) {
		setTimeout(function() {
			console.log(ic);
		}, 3000);
	})(i); // function scoping
}