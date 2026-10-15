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
echo "$grettings, $name"

#Arithmetic
num1 = 1234
num2 = 2033

sum = $((num1 + num2))
echo "the sum is $sum"

#understanding bash data type
#string
first_text = "Hello, world!"
name = "Alice"
gretteings = "$greetings, $name!"
echo $greetings

#numbers 
num5 = 1000
num6 = 1300

sum = $((num5 + num6))
difference = $((num6 - num5))
product = $((difference * num5))
devide = $((product / difference))

echo "sum : $sum, Difference : $differnce, Product : $product, Devide : $devide"

#. comparision operator

# -eq = equal to 
# -ne = Not equal to
# -lt = less than
# -le = less than or equal to
# -gt = greater than
# -ge = greater than or equal to



##. string comparision operator

#.  =: Equal to
#   !=: Not equal to
#. <: Less than, in ASCII alphabetical order
#. >: Greater than, in ASCII alphabetical order



##. Arethmetic operator 

# +: Addition
# -: Subtraction
# *: Multiplication
# /: Division
# %: Modulus (remainder of division)
# For exponentiation, use external tools like bc or awk.


## logical operator

# &&: Logical AND
# ||: Logical OR
# !: Logical NOT