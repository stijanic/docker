var emp1 = {};

emp1.firstName = "Michael";
emp1.lastName = "Scott";
emp1.gender = "M";
emp1.designation = "Regional Manager";

console.log(emp1);

function createEmployeeObject(firstName, lastName, gender, designation) {
	var newObject = {};
	
	newObject.firstName = firstName;
	newObject.lastName = lastName;
	newObject.gender = gender;
	newObject.designation = designation;

	return newObject;
}

function constructorEmployee(firstName, lastName, gender, designation) {
	this.firstName = firstName;
	this.lastName = lastName;
	this.gender = gender;
	this.designation = designation;
}

var emp2 = createEmployeeObject("Jim", "Halpert", "M", "Sales Representative");
console.log(emp2);

var emp3 = new constructorEmployee("Mat", "Gruber", "X", "Fantasy Manager");
console.log(emp3);