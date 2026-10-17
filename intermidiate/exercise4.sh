#prompt the user to enter a number
echo "Input a number: "
#read n

#Check the number is greater than 100
if ["$n" -gt 100];then
  echo "the number is greater than 100."
else 
  echo "the number is not greater than 100."

fi

# Check if the file "test.txt" exists in the current directory
if [ -f "exercise2.sh" ]; then
   echo "File exists"
else
   echo "File doesnot exist"
fi

#prompt the user age
echo "Input your age: "
#read age

if [ "$age" -gt 18]; then
   echo "You are an  adalt"
else 
  echo "you are not an adalt"
fi


#define a string 
#input_str="guu"

#check if the string is empty
if [ -z "$input_str" ]; then
   echo "string is empty"
else
   echo "string is not empty"
fi




#calculate odd even
#Prompting the user to input a number
echo "Please enter a number: "
read number

#Checking if the input is a valid number
if [[ ! "$number" =~ ^[0-9]+$ ]] ; then
   echo "Invalid input. Please enter a valid number"
   exit 1
fi
#Checking if the number is even or odd
if (( number % 2 == 0)); then
   echo "$number is even"
else
   echo "$number is odd"
fi

#Bash script that checks if a file named "abc.sh" is executable and if it is, runs the script, otherwise prints "Script is not executable".
#check if the file "exercise4.sh" exists
if [ -e "exercise4.sh" ]; then
   #Check if the file is executable 
   if [ -x "exercise4.sh "]; then
      #If executable, run the script
      ./exercise4.sh

      else
        #if not executable, print this
        echo "file is not executable"
    fi
else 
   #If the file does not exist, print this
   echo "File 'exercise4.sh' does not exist "
fi

#prompting the user to enter a string 
echo "Input a string: "
read input_str
## Removing non-alphanumeric characters and converting to lowercase
new_string=$(echo "$input_str" | tr -dc '[ :alnum]' | tr '[ :upper: ]''[ :lower: ]')

#Reversing the string
reversed_string=$(echo "$new_string" | rev)

#Checking if the string is a pilandrome
if [ "$new_string"="$reversed_string" ]; then
   echo "The string \"$input_str\" is a pilandrome."
else
   echo "the string \"$input_str\" is not a pilandrome"
fi

# Getting the username of the logged-in user
logged_in_user=$(whoami)

# Checking if the user is logged in
if [ -n "$logged_in_user" ]; then
    echo "The logged-in user is: $logged_in_user"
else
    echo "User is not logged in"
fi