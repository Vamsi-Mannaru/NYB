//11
// function greet() {
    console.log(`Hello, ${this.name}`);
   const perso = { name: 'Vamsi' };
  greet.call(person)

  
  function sum(a, b) {
    console.log(a + b);
  }
  sum.apply(null, [5, 10]);
  
function greet()
   {
  console.log(`Hello, ${this.name}`);
}
const n = { name: 'VamsiI' };
const greetPerson = greet.bind(person);

greetPerson();  


//12
     function logUserDetails(...users) {
    users.forEach(user => {
      console.log(`User: ${user.name}, Age: ${user.age}`);
    });
  }
  logUserDetails(
    { name: "John Doe", age: 25 },
    { name: "Jane Smith", age: 30 }
  );

  
  //13
   let person = {
    name: "anirudh",
    age: 35,
    address: "Tamilnadu"
};

person.email = "aniravichander@example.com";
delete person.address;
person.age = 36;

console.table(person);
  
//15

    function factorial(n)
{
 if (n === 0 || n === 1)
    {
        return 1;
    }
    return n * factorial(n - 1);
}
console.log(factorial(7));
console.log(factorial(3));

//17

const arr = [1, [2, 3], [4, [5, 6, 1]]];
const flattened = arr.flat(Infinity);
const unique = [...new Set(flattened)];
const sum = unique.reduce((acc, val) => acc + val, 0);

console.log(sum); 

