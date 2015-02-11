=begin


A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end

i = 1
t = 1
highest = 0
while i <1000 do
    t= 0
    while t < 1000 do
        #puts (i*t).to_s
        if (i*t).to_s == (i*t).to_s.reverse
            if (i*t) > highest
                highest = (i*t)
            end
        end
        t = t+1
    end
    i=i+1
end
puts highest
# answer 906609

# this is much simpler and more elegant in ruby. Of course in the JS version
# I wrote out all the code for determining whether a string was a palindrome
