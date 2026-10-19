# List all files and directories in the current directory
#ls -al

# Bash script to list only files in the current directory
for file in *; do
   if [ -f "$file" ]; then
      echo "$file"
    fi
done

# Bash script to list only directories in the current directory
for dir in */; do
   if [ -d "$dir" ]; then
      echo "$dir"
    fi
done



#List all files and directories in provided directory
echo "File and directories in $1: "
ls -al "$1"


#Bash script that lists all hidden files (files starting with a dot) in the current directory.
#list all hidden files in the current directory
for file in .*; do
    if [ -f "$file" ]; then
       echo "$file"
    fi
done

# List all files modified within the last 24 hours in the current directory
find . -type f -mtime -1 -print

# List all files larger than 1MB in the current directory
find . -type f -size +1M -exec ls -lh {} \;

# List all empty files in the current directory
find . -maxdepth 1 -type f -empty -exec ls -lh {} \;


#Bash script that lists all files with a specific extension (e.g., ".txt") in the current directory
#list all files with specific extension in the current directory
extension=".sh"

for file in *"$extension"; do
  if [ -f "$file" ]; then
      echo "$file"
  fi
done 