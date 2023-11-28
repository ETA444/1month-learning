# Learning Log
## Chapter 1: Setting up
- **Chapter 1 Official Curriculum on OneMonth**
	1. Welcome
	2. Ruby background
	3. Getting set up
	4. Customizing terminal
	5. Setting up Ruby
	6. Debugging
	7. Command Line Crash Course
	
First we install Ruby, which is done on Windows with the [Ruby Installer](https://rubyinstaller.org/downloads/).  The teacher recommends [GitBash](https://git-scm.com/download/win), which I recommend using through Windows PowerShell to avoid many errors.
## Command Line Crash Course
Next, we learned some very basic commands such as:
```shell
pwd # print working directory
ls # list directories here
ls -a # list also hidden
start #or
explorer # in gitbash is how you open 
cd Desktop # change directory to desktop folder
cd ~ # change directory to home directory
```

Next we were introduced to the Interactive Ruby environment (IRB), which is how we can write Ruby inside the terminal.

```shell
irb
1+1
name = "Your Name"
```

Some basic commands and we move on to the next chapter.

## Chapter 2: Beginnings
- **Chapter 2 Official Curriculum on OneMonth**
	1. Playing with Ruby
	2. Puts and your first script
	3. Errors and debugging
	4. Comments
	5. Numbers & Math
	6. Variables
	7. Strings & Text
	8. Getting User Input
### More PowerShell (MPS#)
#### MPS#1: Creating a file
Created the first .rb file and further got accustomed to PowerShell. 
```shell
# created a new folder first
New-Item -Name "projects" -ItemType Directory

# create the first ruby script
New-Item -Name 'ruby-1.rb' -ItemType File

# opened it in Sublime
subl 'ruby-1.rb'

# read ruby file in PowerShell
ruby ruby-1.rb
```
As things come up that I need and learn I will note them in this section. **Goal is to do most things in PowerShell.**
#### MPS#2: Renaming an existing file
Needed to do some renaming
```shell
Rename-Item -Path "ruby-1.rb" -NewName "timenow.rb"
```
### Practicing some Ruby I
First introduced to `puts`, which stands for put string and is used to output strings in the terminal. As the initial exercises are limited, I will make up some of my own projects (P#) along the way. 

**The goal is to apply all knowledge gained from the chapter curriculum.**
- **Project 1:** To practice some Ruby, I decided to write a simple script that outputs the current time whenever it is called. Helps me keep track of time ;)
- **Project 2:** Simple script that calculates E (energy) based on the formula E=m\*c^2. It asks the user to input value for the mass.
- **Project 3:** Asks you a couple of basic questions in the console and returns random facts (practicing `get`) .

#### P1 - `timenow.rb`: *tells the current time*
- **step1:** Used native object `Time` with method `.now` to get current time.
- **step2:** Learned how to embed the value of a variable into a string in ruby, with the `#{}` syntax.
- **step3:** Used `puts` to output the time.
- **step4:** Learned about `ANSI escape codes` in order to make the output in PowerShell 'easier' on the eyes.
```ruby
# define the time
current_time = Time.now

# define the ANSI escape codes
COLOR_GREEN = "\e[32m"
COLOR_MAGENTA = "\e[35m"
COLOR_RESET = "\e[0m"

# output the time
puts "#{COLOR_MAGENTA}The time is currently: #{COLOR_GREEN}#{current_time}#{COLOR_RESET}"
```
> 🏆 **Achievement unlocked:** `First 10 lines of Ruby code!`

#### P2 - `energy.rb`: calculates energy (E)
- step0: define ANSI escape codes to add colors to messages
- step1: define speed of light
- step2: ask for and get mass from the user using `gets`, which reads the user input. We also use `.to_f` to make it a float.
	- We also use `.chomp` to make sure new line at the end is omitted.
- step3: define energy by its formula
- step4: use `puts` to output the result neatly

```ruby
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
```
> 🏆 **Achievement unlocked:** `First 25 lines of Ruby code!`

#### P3 - `whoareyou.rb`: asks you questions
- step 0: define the colors
- step 1: ask the questions
- step 2: give the facts
```ruby
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
  #{name_backwards}. Bye!"
```
> 🏆 **Achievement unlocked:** `First 50 lines of Ruby code!`


## Chapter 3: Intermediate beginnings
- **Chapter 3 Official Curriculum on OneMonth**
	1. Recap of Beginner Ruby
	2. Methods, part 1
	3. Methods, part 2
	4. Methods, part 3
	5. Reading Files
	6. Writing Files
	7. Copying Files
### Practicing Some Ruby II
We continue the quest to 9,001 lines. 🦍
> *"If variables are the nouns, methods are the verbs."*
> - Mattan Griffel

**The goal is to apply all knowledge gained from the chapter curriculum.**
- **Project 4:** counts the lines in each `.rb` file inside the projects folder and adds them up to output the total number of lines in all projects and total number of lines *per* project.
#### P4 - `linecounter.rb`: counts total lines of ruby
- **step 1:** define the line counting function
- **step 2:** folder path dialog
- **step 3:** iterate over the files and count the lines
- **step 4:** output the info
```ruby
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
```
> 🏆 **Achievement unlocked:** `First 100 lines of Ruby code!`

