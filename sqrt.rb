# Square root calculation using Newton-Raphson
# from Practical Programming (1968)
 
class Sqrt
 def result(a)  
  x = (1 + a) / 2.0
 
	loop do
	  ox = x
	  x = (x + a.to_f / x) / 2.0
	  break if x >= ox
	end
 
	return "The square root of #{a} is #{x}"
 end
end


puts "Enter Number for Squrt"
a= gets.chomp.to_i
s= Sqrt.new
result = s.result(a)
puts result

## s= Sqrt.new
## result = s.result(256)
