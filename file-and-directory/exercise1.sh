#create a dirtectory name "workarea" in the current directory
mkdir workarea
#check if the directory is successfully created
if [ $? -eq 0 ]; then
   echo "Directory 'workarea' created successfully"
else 
   echo "failed to create a directory 'workarea'"
fi
