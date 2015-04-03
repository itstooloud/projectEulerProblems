=begin

The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.

=end

def next_number(num)
	if num % 2 == 0
		next_one = num / 2
	else
		next_one = (num * 3) + 1
	end
	next_one
end


def number_of_moves(start)
	
count_iterations = 0
done = false

	while start >= 1 && !done
		count_iterations +=1
		#puts start
		start = next_number(start)
		if start == 1
			count_iterations +=1
			done = true
		end
	end

	count_iterations

end


most = 0
test_number = 2
this_number_highest = 0

while test_number < 1_000_000

	if number_of_moves(test_number) > most
		most = number_of_moves(test_number)
		this_number_highest = test_number
	end
	test_number += 1
end

puts this_number_highest.to_s + " is highest, with " + most.to_s + " moves."








