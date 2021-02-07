function foo() {
	console.log("***");
	console.log(this);
	console.log("***");
};
foo(); // M1 // global

var obj = {};
obj.foo = function() {
	console.log("---");
	console.log(this);
	console.log("---");
};
obj.foo() // M2 // obj object

new foo(); // M3 // empty object (foo)

foo.call(); // M4 // obj object