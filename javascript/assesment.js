//1

function findMax(a, b) {
    if (a > b) {
        return a;
    } else {
        return b;
    }
}

let num1 = 6;
let num2 = 10;

let max = findMax(num1, num2);
console.log("The maximum number is:", max);

  
 // 2

 function calculator(a, b, operation) {
    switch (operation) {
        case '+': return a + b;
        case '-': return a - b;
        case '*': return a * b;
        case '/':
            if (b === 0) {
                return "Division by zero";
            }
            return a / b;
        default:
            return "Invalid operation";
    }
}


 //3

function checkNumber(num) {
    if (typeof num !== 'number' || isNaN(num)) {
        return "Invalid";
    }
    else if (num > 0) {
        return "Positive";
    }
    else if (num < 0) {
        return "Negative";
    }
    else {
        return "Zero";
    }
}

console.log(checkNumber(100));    
console.log(checkNumber(-54));   
console.log(checkNumber(0));     
console.log(checkNumber("abc"));

//4

  function arraySum(arr) {
    if (arr.length === 0) {
      return 0;
    }
    
    let sum = 0;
    for (let a = 0; a < arr.length; a++) {
      sum += arr[a];
    }
    return sum;
  }
  console.log(arraySum([10, 20, 30])); 
  console.log(arraySum([]));


  5//

  function arrayAverage(arr) {
    if (arr.length === 0) {
      return 0;
    }
  
    let sum = 0;
  
    for (let a = 0; a < arr.length; a++) {
      sum += arr[a];
    }
  
    let avg = sum / arr.length;
    return Math.round(avg * 100) / 100;
  }
 
  console.log(arrayAverage([25, 50, 75]));

  

         
  
           
  