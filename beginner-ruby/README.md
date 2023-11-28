# Learning Log
## Chapter 1: Setting up

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

## Chapter 2: Modest beginnings

### More PowerShell (MPS#)
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
#### MPS#1: Renaming a file in PS
Needed to do some renaming
```shell
Rename-Item -Path "ruby-1.rb" -NewName "timenow.rb"
```
### Learning some Ruby
First introduced to `puts`, which stands for put string and is used to output strings in the terminal. As the initial exercises are limited, I will make up some of my own projects (P#) along the way.

- **Project 1:** To practice some Ruby, I decided to write a simple script that outputs the current time whenever it is called: `timenow.rb` Also helps me keep track of time ;)

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

> 🏆: First 10 lines of Ruby code!

