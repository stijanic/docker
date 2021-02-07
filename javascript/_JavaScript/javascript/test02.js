var name = "Srdjan";

function allocateDepartement() {
	if (name === "Srdjan") {
		var department = "Engineering";
	}
}

allocateDepartement();

console.log(name);
//console.log(department); can't access variable declared locally in a function

var myFn = function() {
	var a = 10;
	var b = 10;
	var f = parseFloat(arguments[0]); // array containing function arguments
	console.log(a + b + f);
	g = 100; //global variable because the absence of key word var
};

(() => {
	console.log("anonymous - immediately invoked function expression - IIFE");
})();

myFn(5);