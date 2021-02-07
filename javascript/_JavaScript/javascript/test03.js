var a = 5;

var outer = function() {
	var b = 10;

	var inner = function() { // clojure
  		console.log(a);
		console.log(b);
	};
  return inner;
};

var b = 1;
var innerFn = outer();
innerFn(); /// b is declared in scope of outer