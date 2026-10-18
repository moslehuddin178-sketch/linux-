#!/bin/bash
#using a for loop to print numbers from 0 to 10
for ((i=0; i<=10; i++))
do 
  echo "the expected output is: " $i
done  

#Initialising the counter
ctr=10
#using a while loop to count down from 10 to 1
while [ $ctr -gt 0 ]
do 
  echo $ctr
  ((ctr--))
done

#Printing "Bash script!" after the countdown
echo "Bash Script!"

# A multiplication table using bash script
#prompting a user input a number
echo "Input a number: "
read n

#checking if the input is a valid number
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
   echo "Invalid input. Please input a valid a number."
   exit 1
fi

#using a for loop to print the multiplication table
echo "Multiplication table for $number: "
for ((i=1; i<=10 ; i++))
do
  echo "$n x $i=$((n * 1))"
done

#execution : code didnt run

#Bash script that uses a while loop to continuously prompt the user for their name until they enter "quit" to exit.
#initialising the input variable
name=""

#continously prompt the user for their name until they enter "quit"
while [[ "$name" != "quit" ]]; do
    #prompting the user to enter their name 
    echo "Input your name (input "quit" to exit): "
    read name

    #check if the user wants to exit 
    if [[ "$name" == "quit" ]]; then
       echo "Exiting"
    else
      echo "Hello, $name!"
    fi
done


#Bash script that utilizes a for loop to iterate through a list of files in the current directory and print each filename.

#iterate through the list of files in the current directory
for file in *; do
   #Check if the file is a regular file (not a directory)
   if [[ -f "$file" ]]; then
   echo "$file"
  fi
done

#Bash script that prompts the user to input a number and then uses a while loop to print the factorial of that number.

#Prompt the user to input a number
echo "Input a number: "
read n

#initialize variables
factorial=1
ctr=1
#check if input is a non negative integer
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
   echo "Error: Input a non-negative integer."
   exit 1
fi

#Calculate factorial using a while loop
while [ $ctr -le $n ]; do
      factorial=$((factorial * ctr))
      ctr=$((ctr + 1))
done

#Print the factorial 
echo "The factorial of $n is : $factorial"

#Bash script that uses a for loop to iterate over a range of numbers from 1 to 20 and prints only the odd numbers
for ((i = 1; i <= 20; i++)); do
   #Check if the current number is odd
   if ((i % 2 != 0)); then
      echo "$i"
    fi
done

#Bash script that utilizes a while loop to continuously generate a random number between 1 and 50 until it generates a number divisible by 3.
#initialize a variable to store the random number
random_number=0

#loop until a random number divisible by 3 is generated
while true; do
    #Generate a random number between 1 to 50
    random_number=$((RANDOM % 50 + 1))

    #check if the random number is divisible by 3
    if (( random_number % 3 == 0)); then
      echo "Random number divisible by 3 generated : $random_number"
      break # Exit the loop once a number divisible by 3 is found
    fi
done


#Bash script that uses a for loop to iterate over a list of names and prints a greeting message for each name
#Define list of names
names=("Mosleh", "Rayhan", "Karim", "Rahim", "Jihad")

#Iterate over the list of names using a for loop
for name in "${names[@]}"; do
   echo "Hello, $name! Welcome to the bash script."
done
