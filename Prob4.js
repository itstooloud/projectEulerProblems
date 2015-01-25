// A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

//Find the largest palindrome made from the product of two 3-digit numbers.
// js convert number to string / var n = num.toString();



var palArray = [];
var numberComps = 0;


function isPalindrome(number) {
    var numString = number.toString();
    var numLength = numString.length;
    for (var i = 0; i<numLength; i++) {
       palArray.push(numString.charAt(i));
        }
 
    // determine how many comparisons to make start to end
    // inside the numString
    
    // if it's an even number, compare half its length. If it's odd,
    // compare half (length -1 )
    
           if (numLength % 2 === 0) {
                numberComps = (numLength / 2);
            }
            else
            {
                numberComps = ((numLength-1) / 2);
            }
 
  //isp variable initialized to true.
    
    var isp = true;
    
    //look at each front to middle and back to middle, comparing them.
    // if it finds one that doesn't match, it's not a palindrome
 
    for (var front = 0; front < numberComps; front++) {
        
        var back = ((numLength-1) - front);

         if (numString[front] != numString[back]) {
            isp = false;
        }             
}
  
    return isp;
 };



//***** code to multiply two 3-digit numbers


var checkPal = 0;
var highestPal = 0;

//checking only from 900 to 1000 because it's not running
// too memory-intensive

for (var x = 900; x < 1000; x++) {
    for (var y = 900; y < 1000; y++) {
        checkPal = (x*y);
            if (isPalindrome(checkPal)) {
                highestPal = checkPal;
            }
    }
}

console.log("highest palindrome:");
console.log(highestPal);

//it worked! answer : 906609

