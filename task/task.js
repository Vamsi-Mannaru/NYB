let marks = [85, 78, 92, 88, 76];
let total = 0;

for (let i = 0; i < marks.length; i++) {
  total += marks[i];
}

let average = total / marks.length;

console.log("Average:", average);

if (average >= 90) {
  console.log("Excellent!");
}
 else if (average >= 80) {
  console.log("Good Job!");
}
 else if (average >= 70) {
  console.log("Needs Improvement.");
} 
else if (average >= 60) {
  console.log("Passing, but Could Do Better.");
} 
else {
  console.log("Failing.");
}
