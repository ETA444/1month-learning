# True or False Test #
# Test your knowledge of logic operators with this True or False test! #
# It counts the number of correct answers and the total time taken to do the test #

# color codes
COLOR_MAGENTA = "\e[35m" #dialogue
COLOR_YELLOW = "\e[33m" #questions
COLOR_RED = "\e[31m" # wrong solution
COLOR_GREEN = "\e[32m" # correct solution
COLOR_RESET = "\e[0m" #color reset

# initial dialogue
puts "#{COLOR_MAGENTA}Welcome to the True or False test! Test your knowledge on logic operators in Ruby with these 20 questions."
puts "You will be presented with a line of Ruby and you need to answer whether it would return true or false if you were to run it."
puts "Let's begin the test!#{COLOR_RESET} \n"

# define all the questions (q) and solutions (s) in the test
q1 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}true && true#{COLOR_RESET} (true/false): "
s1 = "true"

q2 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}false && true #{COLOR_RESET} (true/false): "
s2 = "false"

q3 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}1 == 1 && 2 == 1 #{COLOR_RESET} (true/false): "
s3 = "false"

q4 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}'love' == 'love'#{COLOR_RESET} (true/false): "
s4 = "true"

q5 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}1 == 1 || 2 != 1#{COLOR_RESET} (true/false): "
s5 = "true"

q6 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}true && 1 == 1#{COLOR_RESET} (true/false): "
s6 = "true"

q7 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}false && 0 != 0#{COLOR_RESET} (true/false): "
s7 = "false"

q8 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}true || 1 == 1#{COLOR_RESET} (true/false): "
s8 = "true"

q9 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}'time' == 'money'#{COLOR_RESET} (true/false): "
s9 = "false"

q10 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}1 != 0 && 2 == 1#{COLOR_RESET} (true/false): "
s10 = "false"

q11 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}'I Can't Believe Its Not Butter!' != 'butter'#{COLOR_RESET} (true/false): "
s11 = "false"

q12 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}'one' == 1#{COLOR_RESET} (true/false): "
s12 = "false"

q13 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}!(true && false)#{COLOR_RESET} (true/false): "
s13 = "true"

q14 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}!(1 == 1 && 0 != 1)#{COLOR_RESET} (true/false): "
s14 = "false"

q15 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}!(10 == 1 || 1000 == 1000)#{COLOR_RESET} (true/false): "
s15 = "false"

q16 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}!(1 != 10 || 2 == 4)#{COLOR_RESET} (true/false): "
s16 = "false"

q17 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}!('love' == 'love' && 'time' == 'money')#{COLOR_RESET} (true/false): "
s17 = "true"

q18 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}1 == 1 && !('one' == 1 || 1 == 0)#{COLOR_RESET} (true/false): "
s18 = "false"

q19 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}'chunky' == 'bacon' && !(3 == 4 || 3 == 3)#{COLOR_RESET} (true/false): "
s19 = "false"

q20 = "#{COLOR_MAGENTA}What would this return:#{COLOR_RESET} #{COLOR_YELLOW}3 == 3 && !('love' == 'love' || 'Ruby' == 'Fun')#{COLOR_RESET} (true/false): "
s20 = "false"

# count of correct answers
correct_count = 0

# record the start time
start_time = Time.now

# start asking questions (q) and gettings answers (a) and compare those to the solution (s)
# add to the count if correct
puts q1
a1 = gets.chomp.downcase

if a1 == s1
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q2
a2 = gets.chomp.downcase

if a2 == s2
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q3
a3 = gets.chomp.downcase

if a3 == s3
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q4
a4 = gets.chomp.downcase

if a4 == s4
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q5
a5 = gets.chomp.downcase

if a5 == s5
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q6
a6 = gets.chomp.downcase

if a6 == s6
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q7
a7 = gets.chomp.downcase

if a7 == s7
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q8
a8 = gets.chomp.downcase

if a8 == s8
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q9
a9 = gets.chomp.downcase

if a9 == s9
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q10
a10 = gets.chomp.downcase

if a10 == s10
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q11
a11 = gets.chomp.downcase

if a11 == s11
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q12
a12 = gets.chomp.downcase

if a12 == s12
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q13
a13 = gets.chomp.downcase

if a13 == s13
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q14
a14 = gets.chomp.downcase

if a14 == s14
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q15
a15 = gets.chomp.downcase

if a15 == s15
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q16
a16 = gets.chomp.downcase

if a16 == s16
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q17
a17 = gets.chomp.downcase

if a17 == s17
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q18
a18 = gets.chomp.downcase

if a18 == s18
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q19
a19 = gets.chomp.downcase

if a19 == s19
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect, but let's try another one!#{COLOR_RESET} \n"
end

puts q20
a20 = gets.chomp.downcase

if a20 == s20
	puts "#{COLOR_GREEN}Correct!#{COLOR_RESET} \n"
	correct_count += 1
else 
	puts "#{COLOR_RED}No that was incorrect.#{COLOR_RESET} \n"
end

# record the end time
end_time = Time.now

# calculate the time taken to complete the test
time_taken = end_time - start_time

# convert the time taken to minutes and seconds
minutes = (time_taken / 60).to_i
seconds = (time_taken % 60).to_i

puts "#{COLOR_MAGENTA}Good job on finishing the test!"
puts "You had #{COLOR_YELLOW}#{correct_count} correct answers#{COLOR_MAGENTA}."
puts "Time taken: #{COLOR_YELLOW}#{minutes} minutes and #{seconds} seconds#{COLOR_MAGENTA}.#{COLOR_RESET}"