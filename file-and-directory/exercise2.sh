#!/bin/bash
#create a directory 'workarea' in the current directory
#mkdir workarea

#*check if the directory is created successfully
#if [ $? -eq 0 ]; then
   #echo "Directory 'workarea created successfully"
#else
   #echo "The directory was not created successfully"
#fi 

#write a bash script that copies a newfile named error.log to new file "old_error_log"
#check if the source file exits
if [ -f "error.log" ];then
   #copy the file to a new file named "old_error.log"
   cp error.log old_error.log

   #check if the copy operation was successful
   if [ $? -eq 0 ]; then
      echo "file error.log copied to file old_error.log"
    else 
       echo "failed to copy file 'error.log' to 'old_error.log'"
    fi

else 
    echo "Source file error.log doesnot exists"
fi

#bash script to to move a directory named 'workarea' to 'new-workarea'

#check if the 'workarea' directory exist or not
if [ -d "workarea" ]; then
    mv workarea new_workarea 

    #check if the execution was successful or not
    if [ $? -eq 0 ]; then
      echo "the directory named workarea is moved to new_workarea"
    else 
      echo "failed to move the directory"
    fi
else "source directory doesnot exists"
fi

#bash script for deleting a file
if [ -f "old_error.log" ];then
   #delete the file
   rm old_error.log

   #check if the deletation is successfull
   if [ $? -eq 0 ]; then
     echo "The file is successfully deleted"
   else
      echo "The file is not deleted"
    fi
else
  echo "the source file does not exists"   
fi

#Bash script that copies all files with the ".txt" extension from one directory to another.

#source directory
source_dir="file-and-directory"
#Destination directory
destination_dir="workarea"

#Create a destination directory if it does not exist
mkdir workarea

#copy .sh files from source to destination directory
cp "$source_dir"/*.sh "$destination_dir"

 #check if the file copied successfully
 if [ $? -eq 0 ]; then
    echo "The files successfully copied to destination directory"
  else 
    echo "The files did not copy"
  fi  

#Bash script that moves multiple directories named "dir1", "dir2", and "dir3" to a new location named "new_dir".

# Move directories to a new location
#mv dir_1 dir_2 dir_3 new_dir/

S

#Bash script that deletes all files with names starting with "error" in the current directory.



# Delete files starting with "error_"
rm error*

#Bash script that copies all files and subdirectories from one directory to another, preserving the directory structure.

# Source directory
source_dir="/path/to/source_directory"

# Destination directory
destination_dir="/path/to/destination_directory"

# Copy files and subdirectories from source to destination preserving structure
cp -R "$source_dir"/* "$destination_dir"




#Write a Bash script that creates a directory hierarchy with the following structure:

#parent_directory

#|- workarea
#|   |- subworkarea1
#|   |- subworkarea2
#|- workarea2

# Create parent directory
mkdir parent_directory

# Create subdirectories within parent_directory
mkdir parent_directory/workarea
mkdir parent_directory/workarea/subworkarea1
mkdir parent_directory/workarea/subworkarea2
mkdir parent_directory/workarea2
