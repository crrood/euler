# problem 2
# find the largest prime factor of 600851475143

# going to just brute force this bitch
# runs in O(n) time -- or more accurately O(sqrt(n)^2)

num = 600851475143
num_sqrt = Math.sqrt(num)

prime = 2

while (prime < num_sqrt)
		
	if (num % prime == 0)
	
		i = 2
		prime_sqrt = Math.sqrt(prime)
		is_prime = true
		
		while (i < prime_sqrt)
			
			if (prime % i == 0)
				is_prime = false
				break
			end
			
			i = i + 1
		
		end
		
		if (is_prime)
			$largest_prime_factor = prime
		end
	
	end
	
	prime = prime + 1
	
end

puts prime

puts $largest_prime_factor