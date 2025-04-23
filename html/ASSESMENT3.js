function factorial(n) { 
    if (n === 0 || n === 1)  return 1; 
      return n * factorial(n - 1); 
    } 
  

    function StudentsGrade(marks)
{
    return marks >= 90 ? "A" :
           marks >= 70 ? "B" :
           marks >= 50 ? "C" :
           "Fail";
}

console.log(StudentsGrade(91)); 
console.log(StudentsGrade(74)); 
console.log(StudentsGrade(52)); 
console.log(StudentsGrade(29)); 


const sumEven = (arr) => {
    return arr.filter(num => num % 2 === 0)
              .reduce((sum, num) => sum + num, 0);
  };
  

  function sumObjectValues(obj) {
    let total = 0;
    for (let subject in obj) {
      total += obj[subject];
    }
    return total;
  }
  

  var person = {
    name: "Vamsi Mannaru",
    id: 9944,
    skills: ["HTML", "CSS", "SQL"]
}
person.designation = "Developer";


function countProperties(obj) {
    return Object.keys(obj).length;
}

for (var p in person) {
    console.log(person[p]);
} 