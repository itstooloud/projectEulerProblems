=begin
Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.
=end
# data attached in Prob13_data.txt

data = File.open('Prob13_data.txt', 'r')
total = 0
while !data.eof
	total += data.readline.strip.to_i
end

puts total.to_s[0..9]
