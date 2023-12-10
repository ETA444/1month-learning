# Write a program that prints the numbers from 1 to 100. 
# But for multiples of three print "Fizz" instead of the number 
# and for the multiples of five print "Buzz". 
# For numbers which are multiples of both three and five print "FizzBuzz".

# Tip: % (modulo) tells you what's left over when you 
# divide one number by another.
# ex. number % 3 == 0

(1..100).each do |n|
	if n % 3 == 0 && n % 5 == 0
		puts "#{n} FizzBuzz"
	elsif n % 3 == 0
		puts "#{n} Fizz"
	elsif n % 5 == 0
		puts "#{n} Buzz"
	else
		puts n
	end
end