!#/bin/bash
#set up permissions for exercise4.sh
chmod 764 exercise4.sh

#Check if permissions were set successfully 

if [ $? -eq 0 ];then
   echo "Permissions for 'exercise4.sh' set successfully."
else
   echo "Failed to set permissions for 'exercise4.sh'."
fi

#7: Owner has read, write, and execute permissions.
#6: Group has read and write permissions.
#4: Others have read-only permission.

#Bash script that removes write permissions for the group and others from a file named "input.txt".
#Remove write permissions for the group and others from input.txt
chmod go-w exercise4.sh

#Check if permissions were modified successfully 
if [ $? -eq 0 ]; then
   echo "Write permissions for group and others removed from 'input.txt'"
else
   echo "failed to remove write permissions for group and others from 'input.txt'"
fi

#Bash script that grants execute permissions to all users for a script named "test.sh".

#grant execute permissions to all users for test.sh
chmod +x test.sh

#Check if permissions were modified successfully
if [ $? -eq 0 ]; then
   echo "Execute permissions granted to all users for 'test.sh' successfully"
else 
   echo "failed to grant execute permissions to all users for 'test.sh'"
fi

#Bash script that sets the permissions of a directory named "workarea" to read, write, and execute for the owner, read and execute for the group, and no permissions for others.

chmod 750 workarea

if [ $? -eq 0 ]; then
   echo "Permissions set successfully for directory"
else
   echo "Failed to set permissions for directory 'workarea'"

fi

#The permissions 750 mean:
#Read, write, and execute for the owner.
#Read and execute for the group.
#No permission for others.

#Write a Bash script that removes all permissions for the group and others from a directory named "parent_directory".

chmod go= workarea

if [ $? -eq 0 ]; then
   echo "successfully removes all permissions for the group and others from a directory named workarea"
else 
   echo "failed to removes all permissions for the group and others from a directory named workarea"
fi

#The go= means:

#g=: Removes all permissions for the group.
#o=: Removes all permissions for others.

#Bash script that grants read and write permissions to the owner, group, and others for a file named "output.txt".
# Grant read and write permissions to the owner, group, and others for the file "output.txt"
chmod a+rw workarea

if [ $? -eq 0 ]; then
    echo "succuessfully grants read and write permissions to the owner, group, and others for a file named "output.txt""
else 
    echo "failed to grants read and write permissions to the owner, group, and others for a file named "output.txt""
fi

#Bash script that removes execute permissions for the owner and group from a script named " my_script.sh".

# Remove execute permissions for the owner and group from the script "my_script.sh"
chmod u-x,g-x my_script.sh

# Check if permissions were modified successfully
if [ $? -eq 0 ]; then
    echo "Execute permissions removed successfully for the owner and group from 'my_script.sh'."
else
    echo "Failed to remove execute permissions for the owner and group from 'my_script.sh'."
fi

# Grants read, write, and execute permissions to the owner and group,
# and read-only permission for others for the directory "workarea"
chmod 750 workarea

# Check if permissions were modified successfully
if [ $? -eq 0 ]; then
    echo "Permissions modified successfully for 'workarea'."
else
    echo "Failed to modify permissions for 'workarea'."
fi


#Bash script that removes read and write permissions for the group from a file named "input.txt".

# Remove read and write permissions for the group from the file "input.txt"
chmod g-w input.txt

# Check if permissions were modified successfully
if [ $? -eq 0 ]; then
    echo "Permissions modified successfully for 'input.txt'."
else
    echo "Failed to modify permissions for 'input.txt'."
fi

#Bash script that grants read, write, and execute permissions to the owner, and read-only permissions for others for a script named "my_script.sh"
# Grant read, write, and execute permissions to the owner
chmod u+rwx my_script.sh

# Grant read-only permissions to others
chmod o+r my_script.sh

# Check if permissions were modified successfully
if [ $? -eq 0 ]; then
    echo "Permissions modified successfully for 'my_script.sh'."
else
    echo "Failed to modify permissions for 'my_script.sh'."
fi
