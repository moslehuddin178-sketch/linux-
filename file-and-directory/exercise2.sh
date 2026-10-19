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