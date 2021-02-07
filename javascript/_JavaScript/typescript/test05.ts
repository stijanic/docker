class Person {
  firstName: string;
  lastName: string;
  greet(): void {
    console.log("Hey there!");
  }
}

class Programmer extends Person {
  constructor() {
    super();
    this.firstName = "Srdjan";
    this.lastName = "Tijanic";
  }

  greet() {
    console.log("Hello world from: " + this.firstName + " " + this.lastName);
  }

  greetLikeNormalPeople() {
    super.greet();
  }
}

var aProgrammer = new Programmer();
aProgrammer.greet();
aProgrammer.greetLikeNormalPeople();

var aPerson: Person = new Programmer();
aPerson.greet(); // still calls Programmer method
// aPerson.greetLikeNormalPeople(); // error
