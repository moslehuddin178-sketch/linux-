#Bash script that searches for a file named "output.txt" in the current directory.

#search for file named "exercise3.sh" in the current directory
if [ -f "exercise3.sh" ]; then
   echo "file 'exercise3.sh' belongs to the current directory"
else 
   echo "file 'exercise3.sh' does not belong to the current directory"
fi

#Bash script that searches for a file with a specific name provided as an argument to the script.
#check if an argument is provided
#if [ $# -ne 1 ]; then
  # echo "usage : $0 exercise4.sh"
  #exit 1
#fi

#Get the file name from command line argument 
#filename="$1"

#check id the file exist in the current directory
#if [ -f "$filename" ]; then
  # echo "file '$filename' found in the current directory"
  #else
  #echo "file '$filenmame' didnt find in the current directory"
#fi

#Bash script that searches for files modified within the last 3 days in the current directory.
#get the current time in seconds since epoch
current_time=$(date +%s)

#calculate the time 3 days ago in seconds since the epoch
three_days_ago=$((current_time - (3 * 24 * 60 * 60)))

#Iterate over each file in the current directory
for file in *; do
   #check if file was modified within last 3 days
  if [ -f "$file " ] && [ $(stat -c %Y "$file") -ge "$three_days_ago" ]; then
     echo "$file"
   fi
done


#Bash script that searches for files larger than 1KB in the current directory
#Iterate over each file in the current dorectory 
for file in *; do
   #check if the file size is greater than 1kB
   if [ -f "$file" ] && [ $(stat -c %s "$file") -gt 1024 ]; then
      echo "$file"
    fi
done


#Bash script that searches for empty files in the current directory.
#Iterate over each file in the current directory
for file in *; do
   #check the empty file in the current dirtectory
   if [ -f "$file" ] && [ ! -s "$file" ]; then
      echo "$file"
    fi
done

#Enable globbing to include hidden files
shopt -s dotglob
#specify the extension to search for 
extension='sh'
#Iterate over each filein the current directory
for file in *; do
   #Check if the file has specified extension
   if [ "${file##*.}" = "$extension" ]; then
      echo "$file"
   fi
done

#Bash script that searches for files containing a specific string provided as an argument to the script.
if [ $# -eq 0 ]; then
   echo "Usage: $0 <search_string>"
   exit 1
fi

#extract the search string from the command line argument
search_string="$1"

#Iterate over each file in the current directory
for file in *; do
    # Check if the file is a regular file and contains the search string
    if [ -f "$file" ] && [ $(grep -q "$search_string " "$file"; echo $?) -eq 0 ]; then
       echo "$file"
    fi
done

#Bash script that searches for files owned by a specific user in the current directory.
#check if the username is provided as an argument
if [ $# -eq 0 ]; then
   echo "Usage: $0 <username>"
   exit 1
fi

#
username="$1"

find . -maxdepth 1 -type f -user "$username"

#Bash script that searches for symbolic links in the current directory.
# Search for symbolic links in the current directory
find . -maxdepth 1 -type l

#Bash script that searches for files with execute permissions in the current directory.

#search for files with execute permissions in the current directory
find . -maxdepth 1 -type f -executable
