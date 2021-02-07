var a = 10;7
var b = true;
var c = "Hello";

let greet = () => "Good morning";
var greetings = greet(); // string
var anotherGreetings;
anotherGreetings = greet(); // any when it's not initilized during declaration
anotherGreetings = 10; // doesn't complain as anotherGreetings is declared as any

var z: any;
z = 10;
z = true;
z = 'string';

var w: number | boolean; // union type
w = 10;
w = true;
w = 'string'; // erros as it can be only of types number or boolean
