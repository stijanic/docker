interface Person {
  firstName: string;
  lastName: string;
  getFullName(): string;
}

class Foo implements Person {
  firstName: string;
  lastName: string;

  getFullName(): string {
    return this.firstName + " " + this.lastName;
    //throw new Error("Method not implemented.");
  }
}

let aPerson: Person = new Foo();
console.log(aPerson.getFullName());

// Still an object of class Person - Duck Typing
let someObj = {
  firstName: "Test",
  lastName: "Test",
  foo: 10,
  getFullName: () => "Test Test"
}

aPerson = someObj; // legal
console.log(aPerson.getFullName());
someObj.foo;
aPerson.foo; // error - aPerson doesn't have a property foo but still transpiles
