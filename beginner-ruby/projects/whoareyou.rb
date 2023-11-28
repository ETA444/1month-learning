# define the ANSI escape codes
COLOR_GREEN = "\e[32m" #facts
COLOR_MAGENTA = "\e[35m" #dialogue
COLOR_YELLOW = "\e[33m" #questions
COLOR_RESET = "\e[0m"

# greet user
puts "#{COLOR_MAGENTA}Hey! I will ask you some questions and give you soem facts."

# ask questions
## name
print "#{COLOR_YELLOW}What is your first name? "
name = gets.chomp
## age
print "#{COLOR_YELLOW}Nice name, now what is your age? "
age = gets.chomp.to_i

# compile the facts
dog_age = age / 7
name_backwards = name.reverse

# output the facts
puts "#{COLOR_GREEN}Cool, #{name}. FYI, your age in dog years is \
 #{dog_age} and you name backwards spells \
  #{name_backwards}. Bye!#{COLOR_RESET}"