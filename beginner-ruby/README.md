# Achievement Log
- 🏆 **Achievements:
	- ✅ `First 10 lines of Ruby code!`
		- with `timenow.rb`
	- ✅ `First 25 lines of Ruby code!`
		- with `energy.rb`
	- ✅ `First 50 lines of Ruby code!`
		- with `whoareyou.rb`
	- ✅ `First 100 lines of Ruby code!`
		- with `linecounter.rb`
	- ✅ `First 250 lines of Ruby code!`
		- with `simplecalc.rb` & `typewriter.rb`
	- ✅ `First 500 lines of Ruby code!`
		- with `filecopier.rb` & `trueorfalse.rb`
	- ✅ `First 750 lines of Ruby code!
		- with `dataview.rb` (see github.com/eta444/dataview)
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
### Practicing Some Ruby I
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
- **Project 4:** `linecounter.rb`
- **Project 5:** `simplecalc.rb`
- **Project 6:** `typewriter.rb`
- **Project 7:** `filecopier.rb`
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

#### P5 - `simplecalc.rb`: simple calculator
- **step 1:** Define the calculator function.
- **step 2:** Define the ANSI escape codes.
- **step 3:** Calculator Dialogue
```ruby
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
```

### Reading files 
Here are the Ruby `open()` modes:

- `'r'`: Read-only (default mode).
- `'w'`: Write-only (creates a new file or truncates an existing file).
- `'a'`: Append (creates a new file or appends to an existing file).
- `'r+'`: Read and write.
- `'w+'`: Read and write (creates a new file or truncates an existing file).
- `'a+'`: Read and write (creates a new file or appends to an existing file).
- `'b'`: Binary mode (e.g., `'rb'`, `'wb'`, `'ab'`).
- `'t'`: Text mode (default mode, e.g., `'rt'`, `'wt'`, `'at'`).

You can use these modes as strings when opening files in Ruby, such as `File.open('filename.txt', 'r')`.

#### P6 - `typewriter.rb`: creates and writes files
- **step 1:** color codes + initial dialogue
- **step 2:** get the new file's name
- **step 3:** loop that asks for a new line until user says 'stop'

```ruby
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
```
> 🏆 **Achievement unlocked:** `First 200 lines of Ruby code!`

#### P7 - `filecopier.rb`: copies files
- **step 1:** color codes + initial dialogue
- **step 2:** get the old file's name + its contents
- **step 3:** get the new name + write the new file with the old content

```ruby
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
```


## Chapter 4: Advanced beginnings
- **Chapter 4 Official Curriculum on OneMonth**
	1. Logic in Ruby
	2. Boolean Practice
	3. If Statements
	4. Else and Elsif
	5. Arrays
	6. Loops
	7. FizzBuzz
	8. FizzBuzz solution
	9. More About Arrays
	10. Hashes

### Logic operators in Ruby
```ruby
== # equal
!= # not equal
> # greater than
< # less than
&& # and
|| # or
! # not
```
### Practicing Some Ruby III
We continue the quest to 9,001 lines. 🦍

**The goal is to apply all knowledge gained from the chapter curriculum.**
- **Project 8:** `trueorfalse.rb`

#### P8 - `trueorfalse.rb`: logic test
- **step 1:** color codes + initial dialogue
- **step 2:** define questions and solutions
- **step 3:** define starting time + set correct count to 0
- **step 4:** start asking questions and comparing the answer to the solution with appropriate outputs to the user
- **step 5:** define the end time + calculate total time taken in minutes and seconds
- **step 6:** output the total correct answers and total time taken to the user

```ruby
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
```
> 🏆 **Achievement unlocked:** `First 500 lines of Ruby code!`

### On Different Loops in Ruby
In Ruby, `loop do`, `.each do`, and `.each {}` are all constructs used for iterating over collections (like arrays and hashes) or performing repetitive tasks. However, they have different use cases and behaviors:

1. `loop do`:
   - `loop do` is a basic loop construct that creates an infinite loop until you explicitly break out of it using a `break` statement.
   - It is typically used when you need to perform a task repeatedly until a certain condition is met. You must provide your own exit condition.
   - Example:
     ```ruby
     loop do
       # Some code here
       break if some_condition_met
     end
     ```

2. `.each do`:
   - `.each` is an enumerable method available for arrays and other enumerable collections in Ruby.
   - It iterates through each element of the collection and executes the specified block of code for each element.
   - It's useful for applying the same operation to each item in a collection.
   - Example with an array:
     ```ruby
     numbers = [1, 2, 3, 4, 5]
     numbers.each do |num|
       puts num
     end
     ```

3. `.each {}`:
   - `.each` can also be used with a block written using curly braces `{}` instead of `do` and `end`.
   - This is simply an alternative syntax for the `.each` loop.
   - It's mostly a matter of personal preference or coding style which one you choose to use.
   - Example:
     ```ruby
     numbers = [1, 2, 3, 4, 5]
     numbers.each { |num| puts num }
     ```

In summary, `loop do` is a general-purpose looping construct, while `.each do` and `.each {}` are used for iterating over collections, with `.each {}` being an alternative syntax for `.each do`. The choice between them often depends on the specific use case and your coding style preferences.

### FizzBuzz Challenge 
```ruby
# Write a program that prints the numbers from 1 to 100. 
# But for multiples of three print "Fizz" instead of the number 
# and for the multiples of five print "Buzz". 
# For numbers which are multiples of both three and five print "FizzBuzz".

# Tip: % (modulo) tells you what's left over when you 
# divide one number by another.
# ex. number % 3 == 0

(1..100).each do |n|
	if n % 3 == 0 && n % 5 == 0
		puts "#{n} FizzBuzz"
	elsif n % 3 == 0
		puts "#{n} Fizz"
	elsif n % 5 == 0
		puts "#{n} Buzz"
	else
		puts n
	end
end
```

### Arrays:

1. **Creating Arrays:**
   - You can create an array by enclosing elements in square brackets `[]`.

```ruby
numbers = [1, 2, 3, 4, 5]
fruits = ["apple", "banana", "cherry"]
```

2. **Accessing Elements:**
   - You can access elements in an array using index notation, starting from 0.

```ruby
first_number = numbers[0]  # Gets the first element (1)
second_fruit = fruits[1]   # Gets the second element ("banana")
```

3. **Adding Elements:**
   - You can add elements to an array using methods like `<<` or `push`.

```ruby
numbers << 6   # Adds 6 to the end of the numbers array
fruits.push("orange")  # Adds "orange" to the end of the fruits array
```

4. **Removing Elements:**
   - You can remove elements from an array using methods like `pop`, `shift`, or `delete_at`.

```ruby
last_number = numbers.pop  # Removes and returns the last element (5)
first_fruit = fruits.shift  # Removes and returns the first element ("apple")
   
# Create an array
fruits = ["apple", "banana", "cherry", "date", "elderberry"]
   
# Remove an element at a specific index
removed_fruit = fruits.delete_at(2)  # Removes the element at index 2 ("cherry")
   
# Display the modified array and the removed element
puts "Modified Array: #{fruits.inspect}"
puts "Removed Fruit: #{removed_fruit}"
```

5. **Iterating Through Arrays:**
   - You can iterate through arrays using methods like `each`.

```ruby
numbers.each do |number|
	puts number
end

fruits.each { |fruit| puts fruit }
   ```

### Hashes:

1. **Creating Hashes:**
   - You can create a hash by enclosing key-value pairs in curly braces `{}`.

```ruby
person = { "name" => "John", "age" => 30, "city" => "New York" }
```

2. **Accessing Values:**
   - You can access values in a hash using keys.

```ruby
name = person["name"]  # Gets the value associated with the key "name"
age = person["age"]    # Gets the value associated with the key "age"
```

3. **Adding and Modifying Entries:**
   - You can add or modify entries in a hash using the assignment operator `=`.

```ruby
person["job"] = "Engineer"  # Adds a new key-value pair or modifies an existing one
```

4. **Removing Entries:**
   - You can remove entries from a hash using the `delete` method.

```ruby
person.delete("age")  # Removes the key-value pair with the key "age"
```

5. **Iterating Through Hashes:**
   - You can iterate through hashes using methods like `each`.

```ruby
person.each do |key, value|
	puts "#{key}: #{value}"
end
```

