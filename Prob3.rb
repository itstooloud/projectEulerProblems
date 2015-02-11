=begin
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=end

def is_prime(n)
    test_result = true
    @t = 2
    upper = Math.sqrt(n).floor
   
        while @t <= upper do
           
            if (n % @t) == 0
                test_result = false
               
            end

            @t = @t+1
        end
    return test_result
end

 
outer_limit = 600851475143
i = 1
largest = 0

while i < Math.sqrt(outer_limit) do
    if outer_limit % i == 0  #is it a factor
        if is_prime(i) 
            #puts i #is it prime
            largest = i
        end
    end
    i = i + 1
end
puts largest


    
        