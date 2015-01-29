/* The sum of the squares of the first ten natural numbers is,

12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.*/

//polynomial factoring http://www.wyzant.com/resources/lessons/math/algebra/foil

// (x + y)^2 = x^2 +2xy + y^2  I think

var sumOfSquares = 0;
var sumOfNaturals = 0;
var squareOfNaturals = 0;
var difference = 0;

for (var i = 0; i<=100;i++) {
    
    sumOfSquares = sumOfSquares + (Math.pow(i, 2));
};
console.log(sumOfSquares);

for (var j = 0; j<=100; j++) {
    sumOfNaturals = sumOfNaturals + j;
};
squareOfNaturals = Math.pow(sumOfNaturals, 2);
console.log(squareOfNaturals);

difference = squareOfNaturals - sumOfSquares;
console.log("difference: " + difference);
    