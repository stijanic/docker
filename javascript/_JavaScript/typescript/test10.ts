// tsconfig.json:
// tsc --init
// tsc test10.ts --out test10.js
// tsc test10.ts --watch

// package.json:
// npm init
// npm install lodash --save-dev -- add to package.json
// npm install @types/lodash --save-dev -- add to package.json for typescript checking
// npm start

import { Person } from './test07'; // importing module
import * as _ from 'lodash';

function echo(arg: any): any {
  return arg;
}

console.log(echo(1));
console.log(echo("hello"));

var myStr: string = echo(1);
console.log(myStr);

function echoT<T>(arg: T): T {
  return arg;
}

var myN: number = echoT(1);
console.log(myN);

var myS: string = echoT("hello");
console.log(myS);

// class Person {
//   firstName: string;
//   lastName: string;
//
//   constructor(firstName: string, lastName: string) {
//     this.firstName = firstName;
//     this.lastName = lastName;
//   }
//
//   getFullName() {
//     return this.firstName + " " + this.lastName;
//   }
// }

class Admin extends Person {
}

class Manager extends Person {
}

let admin = new Admin('a', 'a');
let manager = new Manager('m', 'm');

function personEcho<T extends Person>(person: T): T {
  return(person);
}

var foo = personEcho(admin);
console.log(foo);
var bar = personEcho(manager);
console.log(bar);

var array = [1, 2, 3, 4, 5];
console.log(_.reverse(array));
