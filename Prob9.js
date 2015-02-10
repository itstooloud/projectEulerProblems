/* A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.*/



function hasASquareRoot(num) {

	if (Math.sqrt(num) == parseInt(Math.sqrt(num))) {
		return true;
	}
	else
	{
		return false;
	}
};



var a = 0;
var b = 0;
var c = 0;
var s = 1000; //sum total
var keepgoing = true;

for (a = 1; (a < 1000 && keepgoing); a++) {
    for (b = a; b < 1000; b++) {
        
        //some algebraic sleight of hand
        
        c = s - a - b;
 
        if (Math.pow(a,2) + Math.pow(b,2) == Math.pow(c,2)) {
            keepgoing =false;
            console.log(a + " " + b + " " + c);
           
        }
    }
 
};