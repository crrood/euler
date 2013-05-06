# problem 11
# What is the greatest product of four adjacent numbers in the 
# same direction (up, down, left, right, or diagonally) in the 20x20 grid?


input_file = File.open("p11_input.txt", "rb")
multipliers = 4


# load the file into a 2d array
i = 0
grid = Array.new
while line = input_file.gets
	grid[i] = line.split(" ")
	i += 1
end


# left to right
max = 0
product = 1
grid.length.times do |y|
	(multipliers..grid[y].length - 1).each do |i|
	
		multipliers.times do |j|
			product *= grid[y][i - j].to_i
		end
		
		if product > max
			max = product
		end
		
		product = 1
		
	end
end

# up and down
grid[0].length.times do |x|
	(multipliers..grid.length - 1).each do |i|
		
		multipliers.times do |j|
			product *= grid[i - j][x].to_i
		end
		
		if product > max
			max = product
		end
		
		product = 1
		
	end
end

# BR - TL diagonal
(multipliers..grid.length - 1).each do |x|
	(multipliers..grid.length - 1).each do |y|
		
		multipliers.times do |i|
			product *= grid[x - i][y - i].to_i
		end
		
		if product > max
			max = product
		end
		
		product = 1
		
	end
end

# BL - TR diagonal
(0..grid.length - multipliers - 1).each do |x|
	(multipliers..grid.length - 1).each do |y|
		
		multipliers.times do |i|
			product *= grid[x + i][y - i].to_i
		end
		
		if product > max
			max = product
		end
		
		product = 1
		
	end
end

puts "max: " + max.to_s

