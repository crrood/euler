# problem 9
=begin
A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end

a = 1
b = 1
found = false

while !found
	
	c = Math.sqrt(a * a + b * b)
	if a + b + c == 1000
		found = true
		print a.to_s + " " + b.to_s + " " + c.to_s + ": "
		puts (a * b * c).to_s
	elsif b < 1000 / 2
		b += 1
	elsif a < 1000 / 2 
		a += 1
		b = 1
	else
		puts "none found"
	end
	
end