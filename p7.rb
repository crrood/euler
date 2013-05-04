# problem 7
# find the 10001st prime number

# brute forcing away

num = 2
count = 0
target = 10001

while (count < target)
	
	i = 2
	sqrt = Math.sqrt(num)
	is_prime = true
	
	# print num.to_s + "(" + sqrt.to_s + ") "
	
	# doh... switched this <= with a <
	while (i <= sqrt)
		
		if (num % i == 0 && i != num)
			is_prime = false
			break
		end
		
		i += 1
		
	end
	
	if (is_prime)
		# puts num.to_s
		count += 1
	end
	
	num += 1
	
end

puts (num - 1)