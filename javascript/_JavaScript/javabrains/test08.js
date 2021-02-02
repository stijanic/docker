// Function meant to be called in constructor mode
function Bicycle(cadence, speed, gear, tirePressure) {
	this.cadence = cadence;
	this.speed = speed;
	this.gear = gear;
	this.tirePressure = tirePressure;
	this.inflateTires = function() {
		this.tirePressure += 3;
	};
};

// Calling the function in constructor mode
var bicycle1 = new Bicycle(50, 20, 4, 25);
bicycle1.inflateTires();

var bicycle2 = new Bicycle(50, 20, 4, 30);
bicycle2.inflateTires();

function Mechanic(name) {
	this.name = name;
	//this.inflateTires = function(bicycle) {
	//	bicycle.inflateTires();
	//}
}

var mike = new Mechanic("Mike");

console.log(bicycle1.tirePressure);
//mike.inflateTires(bicycle);
mike.inflateTires = bicycle1.inflateTires;
mike.inflateTires.call(bicycle1); // binds to bicycle1 before executing the function
console.log(bicycle1.tirePressure);
