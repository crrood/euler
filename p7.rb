# problem 7
# find the 10001st prime number

# brute forcing away

num = 3
count = 1

while (count < 10)
	
	i = 2
	sqrt = Math.sqrt(num)
	is_prime = true
	
	while (i < sqrt)
		
		if (num % i == 0)
			is_prime = false
			break
		end
		
		i += 1
		
	end
	
	if (is_prime)
		puts num
		count += 1
	end
	
	num += 1
	
end

#puts (num - 1)