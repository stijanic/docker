// Employee
function Employee(name) { this.name = name; };
Employee.prototype.getName = function() { return this.name; }
Employee.prototype.getSalary = function() { return 100; }

// Manager
function Manager(name, dept) { this.name = name; this.dept = dept; };
Manager.prototype.getDept = function() { return this.dept; }

//Manager.prototype.__proto__ = Employee.prototype // makes Manager inherit from Employee

Manager.prototype = Object.create(Employee.prototype);

var emp = new Employee("Jim");
var mgr = new Manager("Michael", "Sales");

//mgr.__proto__.__proto__ = Employee.prototype // makes mgr inherit from Employee

console.log(mgr.getName());
console.log(mgr.getSalary());