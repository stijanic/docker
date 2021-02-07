class Person {
  readonly name: string = "Srdjan";

  constructor(name: string) {
    if(name.length != 0) {
      this.name = name;    
    }
  }
}

var aPerson = new Person("Pera");
console.log(aPerson.name);

var aPerson = new Person("");
console.log(aPerson.name);
