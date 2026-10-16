#!/bin/bash
# Shebang line: Indicates the path to the shell interpreter (in this case, bash)

#input variable
#echo "please writedown your name: "

#read stores user input
#read name

#greeting the user with his/her name
#echo "Hello , $name!"

#ls
#ls command fetch all the components from the directory 

#\n(new line)
#\t (new tab)
# -e option allows interpretation of backslash escapes

echo -e "This is first line\n\tThis is line 2\n\t this is line 3"


#fetching current date and time 
# Using command substitution to get the current date and time
current_datetime=$(date)

echo "Current date and time, $current_datetime"

# Using cat command to concatenate the contents of two text files and display the result
cat test.txt test1.txt

# Script to redirect the output of the echo command to a file

# Redirecting the output of the echo command to a file named "output.txt"
echo "moslehrupok,,,, lab university of applied sciences" > test.txt

# Script to display detailed information about files and directories in the current directory using ls -l

# Using ls command with -l option to display detailed information
ls -l
# ls command: Lists files and directories in the current directory
# -l option: Displays detailed information including permissions, owner, group, size, and modification date

#script display a message with formatted text using ANSI escapes codes

#define ANSI escape codes for formatting
bold=$(tput bold)
red=$(tput setaf 2)
reset=$(tput shr0)

echo -e "${bold}${red} This is a bold and red message.${reset}"