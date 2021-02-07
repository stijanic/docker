let a: number, b: number, c: number, d: number;
let e = 1;

function add(a: number, b: number, c: number = 0, d?: number): number {
  let f: number = 1;
  console.log("d is " + d);
  return(a + b + c);
}

console.log(add(1, 2));
console.log(add(1, 2, 3));
console.log(add(1, 2, 3, 4));
