function createPerson() { // module pattern
	var firstName = "Srdjan";
	var lastName = "Tijanic";

	var obj = {
		"getFirstName": function() {
			return firstName;
		},
		getLastName: function() {
			return lastName;
		},
		"setFirstName": function(name) {
			firstName = name;
		},
		setLastName: function(name) {
			lastName = name;
		}
	};
	return obj;
}

var person = createPerson();

console.log(person.getFirstName());
person.setFirstName("Foo");
console.log(person.getFirstName());

console.log(person.getLastName());
person.setLastName("Bar");
console.log(person.getLastName());
