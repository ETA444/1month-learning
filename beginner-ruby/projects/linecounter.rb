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
print "#{COLOR_YELLOW}Would you like to count the total lines of code in the current folder (#{Dir.pwd})? (y/n): #{COLOR_RESET}"
current_folder = gets.chomp.downcase

## determine
if current_folder == 'y'
	folder_path = Dir.pwd
else 
	# ask for the custom folder path
	print "Enter the folder path: "
	folder_path = gets.chomp
end

# Iteration over files & Counting #

## init total_line_count var
total_line_count = 0

## iterate and count
Dir.glob(File.join(folder_path, '*.rb')).each do |file|
	line_count = line_counter(file)
	total_line_count += line_count
	# also say how many lines each file has
	file_name = File.basename(file) # get the filename without the path
	puts "#{file_name}: #{COLOR_MAGENTA}#{line_count} lines#{COLOR_RESET}"
end

## output total line count
puts "#{COLOR_GREEN} The total lines in all .rb files: #{total_line_count}!#{COLOR_RESET}"