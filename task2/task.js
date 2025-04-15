//1.Question

const studentInfo = 
{
    name: "Fleming",
    age: 20,
    subjects: ["Math", "Science", "Social"],
    
    getDetails: function () 
    {
      return `Name: ${this.name}, Age: ${this.age}, Subjects: ${this.subjects.join(", ")}`;
    }
  };
  console.log(studentInfo.getDetails());


//2

  function factorial(n) 
  {
    if (n === 0 || n === 1) return 1;
    return n * factorial(n - 1);
  }
  console.log(factorial(4));

  //a

  const factorialExp = function(n)
 {
    if (n === 0 || n === 1) return 1;
    return n * factorialExp(n - 1);
  };
  console.log(factorialExp(4));

  //b

  const factorialArrow = (n) => 
  {
    if (n === 0 || n === 1) return 1;
    return n * factorialArrow(n - 1);
  };
  console.log(factorialArrow(4));

  //c.Immediately Invoked Function Expression

  const result = (function factorialIIFE(n) 
  {
    if (n === 0 || n === 1) return 1;
    return n * factorialIIFE(n - 1);
  })
  (4);
  console.log(result);
  

  //3

  function isPrime(num) 
  {
    if (num <= 1) return false;
    if (num === 2) return true; 
    if (num % 2 === 0) return false;
    for (let i = 3; i <= Math.sqrt(num); i += 2) 
    {
      if (num % i === 0) return false;
    }
  
    return true;
  }
  console.log(isPrime(7)); 
  console.log(isPrime(53));
  console.log(isPrime(29)); 
  console.log(isPrime(2)); 

  //4.

  function factorial(n) 
  {
    if (n < 0) return -1;      
    if (n === 0) return 1;  
    let result = 1;
    for (let i = 1; i <= n; i++) 
    {
      result *= i;
    }
  
    return result;
  }
  console.log(factorial(5)); 
  console.log(factorial(0)); 
  console.log(factorial(2)); 
