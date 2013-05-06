# problem 13
# Work out the first ten digits of the sum of 
# the following one-hundred 50-digit numbers.

input_file = File.open("p13_input.txt", "rb")

sum = 0

while line = input_file.gets
	sum += line.to_i
end

puts sum
puts sum.to_s[0..9]