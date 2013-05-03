# problem 2
# find the sum of all even fibonacci numbers less than 4000000

$sum = 0

def fib(n0, n1)

	if (n1 > 4000000)
		return
	end
	
	if (n1 % 2 == 0)
		$sum = $sum + n1
	end
	
	return fib(n1, n0 + n1)

end

fib(1,2)
puts $sum
