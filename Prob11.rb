=begin 
Largest product in a grid
Problem 11
In the 20×20 grid below, four numbers along a diagonal line have been marked in red.

08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08 
49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70
67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21
24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72
21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95
78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48


The product of these numbers is 26 × 63 × 78 × 14 = 1788696.

What is the greatest product of four adjacent numbers in the same direction (up, down, left, right, or diagonally) in the 20×20 grid? 

=end

# create a hash to store the values
#grid = Hash.new
grid= []


#create an array for each string
full_string = []
split_string = []
int_array = []
i = 0
k =0


full_string[0] = "08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08"
full_string[1] = "49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00"
full_string[2] = "81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65"
full_string[3] = "52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91"
full_string[4] = "22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80"
full_string[5] = "24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50"
full_string[6] = "32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70"
full_string[7] = "67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21"
full_string[8] = "24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72"
full_string[9] = "21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95"
full_string[10] = "78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92"
full_string[11] = "16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57"
full_string[12] = "86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58"
full_string[13] = "19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40"
full_string[14] = "04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66"
full_string[15] = "88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69"
full_string[16] = "04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36"
full_string[17] = "20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16"
full_string[18] = "20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54"
full_string[19] = "01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48"



full_string.length.times do	

			split_string =  full_string[k].split " "
			int_array = split_string.collect{|i| i.to_i}
			#(convert the array into integers)
			grid.push(int_array)


k = k + 1

end


def left_to_right(grid)


	multiply_these = []
	these_are_highest = []
	running_product = 1
	product = 1

	left = 0
	t = 0
	
	while t < 20 do
		
		while left < 17 do

			multiply_these << grid[t][left]
			multiply_these << grid[t][left + 1]
			multiply_these << grid[t][left + 2]
			multiply_these << grid[t][left + 3]
			#p multiply_these
			#puts "---------"
			
			multiply_these.each do |p|
				product *= p
			end

			#puts product
			#puts "\n"

			if product > running_product
				running_product = product
				these_are_highest = multiply_these
			end


			multiply_these = []
			product = 1
			
			left += 1
		end
		left = 0

		t += 1
	end

	puts "LEFT TO RIGHT: " + running_product.to_s
	p these_are_highest
	puts "-----"

	
end
#____________________________________________________________________________

def top_to_bottom(grid)


	multiply_these = []
	these_are_highest = []
	running_product = 1
	product = 1

	left = 0
	t = 0
	
	while t < 17 do
		
		while left < 20 do

			multiply_these << grid[t][left]
			multiply_these << grid[t+1][left]
			multiply_these << grid[t+2][left]
			multiply_these << grid[t+3][left]
			#p multiply_these
			#puts "---------"
			
			multiply_these.each do |p|
				product *= p
			end

			#puts product
			#puts "\n"

			if product > running_product
				running_product = product
				these_are_highest = multiply_these
			end


			multiply_these = []
			product = 1
			
			left += 1
		end
		
		left = 0

		t += 1
	end

	puts "TOP TO BOTTOM: " + running_product.to_s
	p these_are_highest
	puts "-------"

	
end

#____________________________________________________________________________

def back_slash(grid)


	multiply_these = []
	these_are_highest = []
	running_product = 1
	product = 1

	left = 0
	t = 0
	
	while t < 17 do
		
		while left < 17 do

			multiply_these << grid[t][left]
			multiply_these << grid[t+1][left+1]
			multiply_these << grid[t+2][left+2]
			multiply_these << grid[t+3][left+3]
			#p multiply_these
			#puts "---------"
			
			multiply_these.each do |p|
				product *= p
			end

			#puts product
			#puts "\n"

			if product > running_product
				running_product = product
				these_are_highest = multiply_these
			end


			multiply_these = []
			product = 1
			
			left += 1
		end
		
		left = 0

		t += 1
	end

	puts "BACKSLASH : " + running_product.to_s
	p these_are_highest
	puts "---------"

	
end

#____________________________________________________________________________

def forward_slash(grid)


	multiply_these = []
	these_are_highest = []
	running_product = 1
	product = 1

	left = 0
	t = 3
	
	while t < 17 do
		
		while left < 17 do

			multiply_these << grid[t][left]
			multiply_these << grid[t-1][left+1]
			multiply_these << grid[t-2][left+2]
			multiply_these << grid[t-3][left+3]
			#p multiply_these
			#puts "---------"
			
			multiply_these.each do |p|
				product *= p
			end

			#puts product
			#puts "\n"

			if product > running_product
				running_product = product
				these_are_highest = multiply_these
			end


			multiply_these = []
			product = 1
			
			left += 1
		end
		
		left = 0

		t += 1
	end

	puts "FORWARD SLASH: " + running_product.to_s
	p these_are_highest

	
end


left_to_right(grid)
top_to_bottom(grid)
back_slash(grid)
forward_slash(grid)

#puts grid[0][19]
#puts grid[1][19]










