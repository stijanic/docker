function Employee(name) { this.name = name };

Employee.prototype.playPranks = function() { console.log("Prank played!"); };

t = new Employee("Tam");
t.playPranks();

o = new Employee("Oam");
o.playPranks();

p = Employee.prototype
console.log(p);
console.log(p.constructor);
console.log(p.__proto__.constructor());

console.log(Object);
console.log(Object());

// Function.prototype <-> Prototype.constructor <- Object.__proto__

var simple = {};
console.log(simple);

var obj = new Object();
console.log(obj);

console.log(Object.prototype);
console.log(obj.__proto__);

console.log(simple.__proto__ === obj.__proto__); // {} === new Object()
console.log(simple.__proto__ === Object.prototype); // {} === Object.prototype

console.log(Object.prototype.constructor);

// Function Employee.prototype <-> Employee.prototype.__proto__ -> Object.prototype
// 									emp {__proto__} ^

console.log(Employee.prototype);
console.log(Employee.prototype.__proto__);
console.log(Object.prototype);

function Employee() {};
var emp = new Employee();
console.log(emp.__proto__.constructor);
console.log(emp.__proto__.__proto__.constructor);

function Manager() {};
var mgr = new Manager();

mgr.__proto__.__proto__ = Employee.prototype