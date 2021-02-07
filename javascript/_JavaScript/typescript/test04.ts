class Person {
  firstName: string;
  lastName: string;

  constructor(firstName: string, lastName: string) {
    this.firstName = firstName;
    this.lastName = lastName;
  }

  getFullName(): string {
    return this.firstName + " " + this.lastName;
  }
}

var aPerson = new Person("Pera", "Peric");
aPerson.firstName = "Srdjan";
aPerson.lastName = "Tijanic";
console.log(aPerson);
console.log(aPerson.getFullName());
