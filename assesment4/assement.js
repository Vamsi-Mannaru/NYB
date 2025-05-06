//1
function getFirstChar(str) {
    if (str.length === 0) return '';
    return str[0];
  }
  
  console.log(getFirstChar("VamsiMannaru"));
  console.log(getFirstChar(""));


  //2

function sumArray(arr) {
    let sum = 0;
    for (let num of arr) {
        sum += num;
    }
    return sum;
}

console.log(sumArray([6, 7, 8, 9, 10])); 

//6

function isMultipleOfFive(num) {
    return num % 5 === 0;
}

console.log(isMultipleOfFive(40));  

//4

function getArrayLength(arr) {
    var counts = 0;
    for (var i in arr) {
        counts++;
    }
    return counts;
}

console.log(getArrayLength([1, 2, 3]));

//8

function findMin(arr) {
    let min = arr[0];
    for (let num of arr) {
        if (num < min) {
            min = num;
        }
    }
    return min;}

console.log(findMin([5, 2, 8, 1, 9]));



  