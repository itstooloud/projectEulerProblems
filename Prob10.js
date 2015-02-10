/*The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.*/

//this function was written for Problem 7

var total = 0;


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

for (var i = 2; i<=2000000;i++){
    if (isPrime(i)) {
        total = total + i;
    };
};
console.log(total);