export class Person {
  // private firstName: string; // default is public
  // private lastName: string;

  constructor(private firstName: string, private lastName: string) {
    // public accessible everywhere & protected accessible in the same class or subclass
    //this.setFirstName(firstName);
    //this.setLastName(lastName);
  }

  getFirstName(): string {
    return this.firstName;
  }

  getLastName(): string {
    return this.lastName;
  }

  setFirstName(firstName: string) {
    this.firstName = firstName;
  }

  setLastName(lastName: string) {
    this.lastName = lastName;
  }

  greet(): void {
    console.log("Hey there!");
  }
}

class Programmer extends Person {
  constructor(firstName: string, lastName: string) {
    super(firstName, lastName);
  }

  greet(): void {
    console.log("Hello world from: " + this.getFirstName() + " " + this.getLastName());
  }

  greetLikeNormalPeople(): void {
    super.greet();
  }
}

var aProgrammer = new Programmer("Srdjan", "Tijanic");
aProgrammer.greet();
aProgrammer.setFirstName("Pera");
aProgrammer.setLastName("Peric");
aProgrammer.greetLikeNormalPeople();

var aPerson: Person = new Programmer("Mika", "Mikic");
aPerson.greet(); // still calls Programmer method
// aPerson.greetLikeNormalPeople(); // error
