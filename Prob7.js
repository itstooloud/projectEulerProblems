
/*
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?*/

var k = 2;
var prime = 0;
var ordinate = 0;
var done = false;


function isPrime(num) {
 
    
//initialize isPrime value as true
    
    var isPrime = true;

// determine if isPrime is false by checking whether it is divisible
    //by each value under it, up to its square root
    
   for (var i = 2; i <= Math.sqrt(num); i++) {
      if (num % i === 0) {isPrime = false}
   }

   return isPrime;

}
// increment k upwards until it finds the 10,001st prime number
while (!done) {
    if (isPrime(k)) {
        ordinate = ordinate +1;
    }
    if (ordinate === 10001) {
        console.log("10001 prime: " + k);
        
        //once the value is found, declare done = true to exit the loop
        
        
        done = true;
    }
    k = k + 1;
};
        
        
    