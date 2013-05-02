# problem 4
# find the largest palindromic number made from
# the product of two 3 digit numbers

# guess I'll brute force this one too

n1 = 100
n2 = 100
$largest_palindrome = 0

while (n1 < 1000)

	while (n2 < 1000)
	
		product = n1 * n2
		
		if (product.to_s.reverse == product.to_s)
			
			if (product > $largest_palindrome)
				$largest_palindrome = product
			end
			
		end
		
		n2 = n2 + 1
	
	end
	
	n1 = n1 + 1
	n2 = 100
	
end

puts $largest_palindrome