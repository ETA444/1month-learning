# FileCopier #
# Simple file content copier #
# The function will ask you which file it should copy,
# then what the name of the new files is
# and copies the old file's content into the new one.

## This function was painstakingly written by using TypeWriter (typewriter.rb). :D ##

# color codes
COLOR_MAGENTA = "\e[35m" #dialogue
COLOR_YELLOW = "\e[33m" #questions
COLOR_RESET = "\e[0m" #color reset

# initial dialogue
puts "#{COLOR_MAGENTA}Welcome to the FileCopier! You can copy the contents of one file into another with this function."
puts "Functionality:"
puts "- Name the file, you want to copy the contents of"
puts "- Choose the name of the new file.#{COLOR_RESET}"

# get filename
puts "#{COLOR_YELLOW}What is the name of the original file?: #{COLOR_RESET}"
old_filename = gets.chomp

# scrape content from that file
old_filecontent = open(old_filename).read

puts "#{COLOR_MAGENTA}Great! I got the contents. #{COLOR_RESET}"
puts "#{COLOR_YELLOW}What should I name the new file?: #{COLOR_RESET}"
new_filename = gets.chomp

File.open(new_filename, 'w') do |file|
file.write(old_filecontent)
end
puts "#{COLOR_MAGENTA}All done, I created #{COLOR_YELLOW}#{new_filename}#{COLOR_RESET} #{COLOR_MAGENTA}with the content from#{COLOR_RESET} #{COLOR_YELLOW}#{old_filename}#{COLOR_RESET}#{COLOR_MAGENTA}.#{COLOR_RESET}"