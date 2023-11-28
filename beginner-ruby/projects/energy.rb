# define the ANSI escape codes
COLOR_GREEN = "\e[32m"
COLOR_MAGENTA = "\e[35m"
COLOR_YELLOW = "\e[33m"
COLOR_RESET = "\e[0m"

# greet user
puts "#{COLOR_MAGENTA}Welcome to the energy calculator!"

# define speed of light
c = 299792458

# ask for and get mass from the user
print "#{COLOR_GREEN}Specify the mass of the object: "
m = gets.chomp.to_f

# define energy
e = m * (c ** 2)

# output result
puts "#{COLOR_YELLOW}E = #{e} joules#{COLOR_RESET}"