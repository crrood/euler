# problem 8
# find the greatest product of 5 consecutive digits in this 1000-digit number
# *number is in p8_input.txt

digits = 5
max = 0

# load the input string
string = File.open("p8_input.txt", "rb").read

((digits - 1)..string.length).each do |i|
	
	product = 1
	digits.times do |j|
		product *= string[i - j].to_i
	end
	
	if product > max
		max = product
	end
	
end

puts max