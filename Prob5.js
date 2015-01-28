//2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

//What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?



var i = 2400;
var target = 0;

var done = true;

// tested up to 500000000
for (var i = 10000; i<500000000; i++) {
			done=true;
		for (var j=2; (done && j <20); j++) {

			//the condition 'done' is written into the loop so it stops when it finishes the loop
			//and done is still true

						done = done && (i % j === 0);
						//console.log(i + " " + done + " " + j)
		};
				//console.log(i);
				
		if (done) {
			console.log(i + " " + j);
						break;
		}

		};
