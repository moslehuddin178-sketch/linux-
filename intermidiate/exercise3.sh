# Redirecting the output of the ls command to a file named "test.txt"
ls >test.txt

cat < test.txt > test1.txt
#The "cat" command reads the contents of the "input.txt" file and writes them to the 'output.txt' file.

# Redirecting the standard error (stderr) of a command to a file named "error.log"
command_that_might_generate_errors 2> error.log

# Redirecting the output of the echo command to /dev/null to suppress any output
echo "This output will be suppressed" > /dev/null

# Redirecting the output of the ls command to grep as input, to list only files with a ".txt" extension
ls | grep '\.txt$'

# Using input redirection to read a number from "test.txt"
# Performing arithmetic operation on the read number
read number < test1.txt
result=$((number = 2000))

# Printing the result of the arithmetic operation
echo "The result of doubling the number from test1.txt is: $result"


# Redirecting the output of the command to both the terminal and a file using tee
#tee output.txt redirects the output to both the terminal and a file named "output.txt". The "tee" command reads from standard input and writes to both standard output (the terminal) and the specified file.
ls -l | tee output.txt

# Using a heredoc to input multi-line text and redirecting it to a file named "document.txt"
cat < test1.txt
This is line 1 of the document.
This is line 2 of the document.
This is line 3 of the document.
EOF

