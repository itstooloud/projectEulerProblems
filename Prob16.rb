=begin

215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?
=end

num = 2**1000
num_string = num.to_s

length =  num_string.length

puts length

i = 0
sum = 0

while i < length 

	sum += num_string[i].to_i
	i +=1

	
end

puts sum


