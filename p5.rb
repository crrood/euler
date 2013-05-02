# problem 5
# What is the smallest number that is evenly divisible 
# by all of the numbers from 1 to 20?

# brute force brute force brute force

num = 40
not_found = true

while (not_found)
	
	i = 2
	while (i < 20)
		
		if (num % i != 0)
			break
		end
		
		i = i + 1
		
	end
	
	if (i == 20)
		not_found = false
	end
	
	num = num + 1
	
end

puts (num - 1)