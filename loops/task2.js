let student = {
    name: "Ravi",
    age: 20,
    course: "B.Tech",
    branch: "CSE"
  };
  
  for (let key in student) {
    console.log(key + ": " + student[key]);
  }
  
  let monthNumber = 4;
let monthName = "";

switch (monthNumber) {
  case 1:
    monthName = "January";
    break;
  case 2:
    monthName = "February";
    break;
  case 3:
    monthName = "March";
    break;
  case 4:
    monthName = "April";
    break;
  case 5:
    monthName = "May";
    break;
  case 6:
    monthName = "June";
    break;
  case 7:
    monthName = "July";
    break;
  case 8:
    monthName = "August";
    break;
  case 9:
    monthName = "September";
    break;
  case 10:
    monthName = "October";
    break;
  case 11:
    monthName = "November";
    break;
  case 12:
    monthName = "December";
    break;
  default:
    monthName = "Invalid Month";
}

console.log("Month is:", monthName);

let marks = [75, 80, 90, 85, 70];
let total = 0;

for (let mark of marks) {
  total += mark;
}

let average = total / marks.length;

console.log("Average Marks:", average);
