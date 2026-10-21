#Bash script that creates a symbolic link named "file_link" pointing to a file named "input.txt".
ln -s input.txt file_link

#check if the symbolic link was created successfully
if [ -L "file_link " ]; then
    echo "Symbolic link 'file_link' created successfully."
else
    echo "Failed to create symbolic link 'file_link'."
fi 

#Bash script that removes a symbolic link named "file_link".
#Check if symbolic link "file_link" exists
if [ -L "file_link" ]; then 
    echo "Symbolic link 'file_link' exists in the current directory"
else 
    echo "Symbolic link 'file_link' does not exist in the current directory"
fi 

#Bash script that removes a symbolic link named "file_link".

#Remove the symbolic link was removed successfully
if [ ! -L "file_link" ]; then
   echo "symbolic link 'file_link' removed successfully"
else 
   echo "Failed to remove smybolic link 'file_link'."
fi

#Bash script that creates a symbolic link named "dir_link" pointing to a directory named "workarea".

#Create a symbolic link named "dir_link" pointing to workarea
ln -s workarea dir_link 

#Check if the symbolic link was created successfully
if [ -L "dir_link" ]; then
    echo "Symbolic link 'dir_link' created successfully"
else 
    echo "Failed to create symbolic link 'dir_link'"
fi

#Bash script that checks if a symbolic link named "dir_link" points to a directory.

# Check if "dir_link" exists and is a symbolic link
if [ -L "dir_link" ]; then
    # Check if the target of the symbolic link is a directory
    if [ -d "dir_link" ]; then
        echo "Symbolic link 'dir_link' points to a directory."
    else
        echo "Symbolic link 'dir_link' does not point to a directory."
    fi
else
    echo "Symbolic link 'dir_link' does not exist."
fi

#Bash script that lists all symbolic links in the current directory.

# List all symbolic links in the current directory
for file in *; do
    if [ -L "$file" ]; then
        echo "$file"
    fi
done

