echo "This is the first script"; echo "this is another script"
#semicolon used for separating multiple commands in same line


#bash script
#!/bin/bash
name = "Mosleh"
echo "Hello,$name!"


#environment variable
echo "your path is $PATH"

#local and global variables
first_function (){
    local local_var = " this is a local variable" #local variable
    echo $local_var 
}
first_function

#variable operations
#concatenation
grettings = "Hello,"
name = "World"
echo "$grettings$name"

#Arithmetic
num1 = 1234
num2 = 2033

sum = $((num1 + num2))
echo "the sum is $sum"
