# TypeWriter #
# Simple file creation and writing #
# The function will ask you the filename, then 
# you can start writing lines until you need to. 
# When you don't want to write say 'stop'.

# color codes
COLOR_MAGENTA = "\e[35m" #dialogue
COLOR_YELLOW = "\e[33m" #questions
COLOR_RESET = "\e[0m"

# initial message 
puts "#{COLOR_MAGENTA}Welcome to the TypeWriter! You can write lines into a new file with this function."
puts "Functionality:"
puts "- Every time you are asked for text you type on a new line."
puts "- If you don't want to write any new lines type 'stop'. \n"

# get filename
puts "#{COLOR_YELLOW}First things first, how would you like to name the new file? (e.g. newfile.txt): #{COLOR_RESET}"
filename = gets.chomp

# create file and write (loop)
File.open(filename, 'w') do |file|
	loop do 
		# get content
		puts "#{COLOR_YELLOW}What would you like to write? (type 'stop' to stop writing): \n #{COLOR_RESET}"
		line = gets.chomp

		# logic
		if line == 'stop'
			break # stop loop
		else
			file.puts(line)
		end
	end
end