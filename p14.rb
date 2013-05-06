# problem 14
=begin
The following iterative sequence is defined for the set of positive integers:

n = n/2 (n is even)
n = 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13  40  20  10  5  16  8  4  2  1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. 
Although it has not been proved yet (Collatz Problem), it is thought that all 
starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?
=end


chain = 0
max_chain = 0
max_start = 0
start = 2


while start < 1000000
	
	num = start
	chain = 1
	
	while num > 1
		
		if num % 2 == 0
			num /= 2
		else
			num = num * 3 + 1
		end
		
		chain += 1
		
	end
	
	if chain > max_chain
		max_chain = chain
		max_start = start
	end
	
	start += 1
	
end

puts max_chain.to_s + " -- " + max_start.to_s