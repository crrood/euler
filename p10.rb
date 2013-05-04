# problem 10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

sum = 0
num = 2

while num < 2000000
	
	sqrt = Math.sqrt num
	i = 2
	while i <= sqrt
		
		if num % i == 0 || i == num
			break
		else
			i += 1
		end
		
	end
	
	if i > sqrt
		sum += num
	end
	
	num += 1
	
end

puts sum