// Method 1: Using Set

function remDup(arr) {
    return [...new Set(arr)];
}
console.log(remDup([1, 2, 2, 3, 3, 4]));


// Method 2: Using includes()

function remDup1(arr) {
    let newArr = [];
    for (let val of arr) {
        if (!newArr.includes(val)) {
            newArr.push(val);
        }
    }
    return newArr;
}
console.log(remDup1([1, 2, 2, 3, 3, 4]));


// Method 3: Using indexOf()

function indDup(arr) {
    let newArr = [];
    for (let val of arr) {
        if (newArr.indexOf(val) === -1) {
            newArr.push(val);
        }
    }
    return newArr;
}
console.log(indDup([1, 2, 2, 3, 3, 4]));
