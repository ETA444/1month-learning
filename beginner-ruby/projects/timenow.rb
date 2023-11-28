# define the time
current_time = Time.now

# define the ANSI escape codes
COLOR_GREEN = "\e[32m"
COLOR_MAGENTA = "\e[35m"
COLOR_RESET = "\e[0m"

# output the time
puts "#{COLOR_MAGENTA}The time is currently: #{COLOR_GREEN}#{current_time}#{COLOR_RESET}"