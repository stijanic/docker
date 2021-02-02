var a = {
	fn: function(param) { console.log(param); }, // function
	isBEqual: function(param) { return(param === this.b); }, // function
	args: function() { console.log("Number of arguments: " + arguments.length); for(i = 0; i < arguments.length; i++) { console.log(arguments[i]); }}, //function
	b: 5 //field of object a
}

console.log(a.isBEqual(a.b));

a.fn(a.b);

a.args(1, 2, 3, 4, 5, 6, 13); // variable number of args stored in arguments

var ar = [1, 2, 3];

ar.push(5) // adds 5 at the end
console.log(ar)

ar.pop() // removes and returns last element which is 5
console.log(ar)

ar.shift() // remove and returns the first element which is 1
console.log(ar)

ar.unshift(14) // adds 14 at the beginning 
console.log(ar)

ar.forEach(function(item, index) { // third arg is array itself
	console.log(index + ": " + item)
}); // looping on array

function foo() {
	return foo; // returns itself
}

console.log(foo());