// npm install typescript
// tsc *.ts => *.js

var fnArrow = () => 'response';
console.log(fnArrow);

var fnClassic = function() {
  return 'response';
}
console.log(fnClassic);

var n: number;
var n = true; // error but it transpiles

var x: number;
var y: boolean;
var z: string;
var foo: undefined; // can only de undefined
foo = 1; // error but it transpiles
var bar = undefined;
bar = 1;

var myArr: number[] = [1, 2, 3];
myArr = [];
myArr = [1, 2];
myArr = ['1']; // error but it transpiles
myArr = 1; // error but it transpiles

myArr.push(1);
y = myArr.pop(); // error but it transpiles

var myArr: [number, string, boolean];
myArr = [1, 'string', true]; //tuples
