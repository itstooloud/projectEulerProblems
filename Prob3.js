
//determine the largest prime factor under a number

var test_number = 600851475143; //target number
var largest = 0;


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

// loop through numbers up to sqrt of target to see if they 
// divide into target. Then check to see if it's a prime number

for (var j = 1; j < Math.sqrt(test_number); j++) {
    if (test_number % j === 0) {
        if (isPrime(j)) {
            
            largest = j;
        }
    }
    
}
  
console.log(largest);