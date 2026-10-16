#!\bin\bash
#variable declaration and initial assignment
my_age=23
#reassigning the variable to a different value
my_age=21

echo "My age is, $my_age"

#variable scope

#define a function
my_function() {
    local inside_variable="This is inside the function"
    echo "Variable inside function: $inside_variable"
}

#call the function
my_function

#attemp to access the variable outside the function
echo "Variable output function: $inside_variable"

#array declaration 
colors=("Red", "Blue", "Green","Purple", "Yellow")

#print entire array 
echo "My favorite colors are: ${colors[@]}"

##special variable
echo "Name of the script: $0"
#Print the number of arguments passed to the script
echo "Number of arguments passed: $#"
#print all arguments passed to the script
echo "all arguments passed: $@"
#check the exit status of last command
echo "Exit status of last command: $?"