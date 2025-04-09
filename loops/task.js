
   let num = 7;
console.log("Multiplication Table of " + num);
for (let i = 1; i <= 10; i++) {
  console.log(num + " x " + i + " = " + (num * i));
}

let sum = 0;
for (let i = 1; i <= 50; i++) {
  if (i % 2 !== 0) {
    sum += i;
  }
}
console.log("Sum of odd numbers from 1 to 50 is:", sum);


console.log("Multiples of 5 from 1 to 100:");
for (let i = 1; i <= 100; i++) {
  if (i % 5 === 0) {
    console.log(i);
  }
}



