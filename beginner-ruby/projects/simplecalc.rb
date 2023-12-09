# Simple Calculator #
# This calculator can perform an operation between two numbers.

# Define the calculator function #
def calc(operation, n1, n2)
	if operation == 'add'
		puts "Adding #{n1} and #{n2} ..."
		result = n1 + n2
		puts "#{COLOR_GREEN}The result is: #{result}#{COLOR_RESET}"
	elsif operation == 'sub'
		puts "Subtracting #{n1} and #{n2} ..."
		result = n1 - n2
		puts "#{COLOR_GREEN}The result is: #{result}#{COLOR_RESET}"
	elsif operation == 'mul'
		puts "Multiplying #{n1} and #{n2} ..."
		result = n1 * n2
		puts "#{COLOR_GREEN}The result is: #{result}#{COLOR_RESET}"
	elsif operation == 'div'
		puts "Dividing #{n1} and #{n2} ..."
		result = n1 / n2
		puts "#{COLOR_GREEN}The result is: #{result}#{COLOR_RESET}"
	else 
		puts "#{COLOR_RED}This is not a valid operation.#{COLOR_RESET}"
	end
end

# Define the ANSI escape codes #
COLOR_GREEN = "\e[32m" 
COLOR_MAGENTA = "\e[35m" 
COLOR_YELLOW = "\e[33m" 
COLOR_RED = "\e[31m"
COLOR_RESET = "\e[0m"

# Calculator Dialogue #
puts "Hi! What would you like to calculate today?"
puts "This calculator can: \n - Add (add) \n - Subtract (sub) \n - Multiply (mul) \n - Divide (div)!"

## get the operation
print "#{COLOR_YELLOW}What operation would you like to perform? (add/sub/mul/div):#{COLOR_RESET}"
op = gets.chomp.downcase

## get n1
print "#{COLOR_YELLOW}Provide the first number: #{COLOR_RESET}"
number_1 = gets.chomp.to_f

## get n2
print "#{COLOR_YELLOW}Provide the second number: #{COLOR_RESET}"
number_2 = gets.chomp.to_f

# Calculation and Output #
calc(op, number_1, number_2)