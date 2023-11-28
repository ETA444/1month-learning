gem install 'tk'
require 'tk'

# Define the ANSI escape codes #
COLOR_GREEN = "\e[32m" #facts
COLOR_MAGENTA = "\e[35m" #dialogue
COLOR_YELLOW = "\e[33m" #questions
COLOR_RESET = "\e[0m"

# Define the `line_counter` function #
def line_counter(file_path)
	begin
		# the file opening and counting
		File.open(file_path, 'r') do |file|
			line_count = 0
			file.each_line { line_count += 1 }
			line_count
		end
	rescue StandardError => e
		puts "#{COLOR_MAGENTA}Error counting lines in #{COLOR_YELLOW}#{File.basename(file_path)}#{COLOR_MAGENTA}: #{e.message} #{COLOR_RESET}"
	end
end

# Folder Path Dialogue & Determination #

## dialogue
print "#{COLOR_MAGENTA}Would you like to count the total lines of code in the #{COLOR_YELLOW}current folder (#{Dir.pwd})#{COLOR_MAGENTA}? #{COLOR_RESET}(y/n): "
current_folder = gets.chomp.downcase

## determine
if current_folder == 'y'
	folder_path = Dir.pwd
else 
	# browse for custom path using tk lib
	TkRoot.new.withdraw
	folder_path = Tk::chooseDirectory
end

# Iteration over files & Counting #

## init total_line_count var
total_line_count = 0

## iterate and count
Dir.glob(File.join(folder_path, '*.rb')).each do |file|
	line_count = line_counter(file)
	total_line_count += line_count
	# also say how many lines each file has
	puts "#{COLOR_MAGENTA}#{file}: #{COLOR_YELLOW}#{line_count} lines#{COLOR_RESET}"
end

## output total line count
puts "#{COLOR_MAGENTA} The total lines in all .rb files: #{COLOR_YELLOW}#{total_line_count}#{COLOR_MAGENTA}!#{COLOR_RESET}"