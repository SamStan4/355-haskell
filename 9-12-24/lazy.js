const numbers = Array.from(Array(100).keys(), (i) => i + 1);

// console.log(numbers);

function odd(n) {
    return n % 2 != 0;
}

function getNOddNumbers(n) {
    return numbers.filter(odd).slice(0, n);
}

// console.log(getNOddNumbers(5));

function getFirstNOddNumbers(n) {
    return Array.from(Array(n * 2).keys(), (i) => {
        return i + 1;
    }).filter((m) => {
        return m % 2 == 1;
    }).slice(0, n);
};

console.log(getFirstNOddNumbers(100));