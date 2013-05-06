# problem 12
# What is the value of the first triangle number to have over five hundred divisors?

sum = 1
i = 2
found = false

while !found
	
	factors = 0
	sqrt = Math.sqrt(sum)
	j = 1
	
	while j < sqrt
	
		if sum % j == 0
			factors += 2
		end
		
		j += 1
		
	end
	
	if sum % sqrt == 0
		factors += 1
	end
	
	if factors > 500
		found = true
		puts sum
	end
	
	sum += i
	i += 1
	
end