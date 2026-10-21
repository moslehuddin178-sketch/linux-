# Bash script that creates a tar archive of a directory named "workarea".
#Create a tar archive of the directory workarea
#tar -cvf workarea.tar workarea

# Check if the tar archive was created successfully
#if [ $? -eq 0 ]; then
    #echo "Tar archive 'workarea.tar' created successfully."
#else
   # echo "Failed to create tar archive 'workarea.tar'."
#fi

#Bash script that extracts the contents of a tar archive named 'workarea.tar' into a directory named "extracted_files".

#extract the contents of workarea.tar into the directory 'extracted_files'
tar -xf workarea.tar -C extracted_files

# Check if the extraction was successful
if [ $? -eq 0 ]; then
    echo "Extraction successful. Files extracted to 'extracted_files' directory."
else
    echo "Extraction failed."
fi

#Write a Bash script that creates a gzip compressed archive of a directory named "workarea".
#create a gzip compressed archive of the directory 'workarea'
tar -czf workarea.tar.gz workarea

#check if compression was successful 
if [ $? -eq 0 ]; then
   echo "Compression successful Archive created: workarea.tar.gz"
else
    echo "Compression failed."
fi

#Write a Bash script that extracts the contents of a tar archive named "workarea.tar.gz" into a directory named "extracted_files".
#extract the contents of tar archive workarea.tarinto the directory extracted_files
tar -xzf workarea.tar.gz -C extracted_files/

# Check if the extraction was successful
if [ $? -eq 0 ]; then
    echo "Contents of 'workarea.tar.gz' extracted successfully into 'extracted_files' directory."
else
    echo "Failed to extract contents of 'workarea.tar.gz'."
fi 

#Bash script that creates a zip archive of a directory named "workarea"
#cpmpressing workarea directory to a zip file

zip -r workarea.zip workarea 

#check if the execution is successful or not
if [ $? -eq 0 ]; then
    echo "Zip archive 'workarea.zip' created successfully."
else
    echo "Failed to create zip archive 'workarea.zip'."
fi

#Bash script that extracts the contents of a zip archive named "workarea.zip" into a directory named "new_dir".
#create a zip archive of the 
zip -r workarea.zip new_dir

#check if the execvution is successful
if [ $? -eq 0 ]; then 
    echo "Zip archive 'workarea.zip' created successfully."
else
    echo "Failed to create zip archive 'workarea.zip'."
fi


#Bash script that creates a tar archive of a directory named "source_directory", excluding files with a ".txt" extension.

tar -cf source_directory.tar --exclude="*.sh" source_directory

# Check if the tar operation was successful
if [ $? -eq 0 ]; then
    echo "Tar archive 'source_directory.tar' created successfully."
else
    echo "Failed to create tar archive 'source_directory.tar'."
fi

#Bash script that compresses multiple files (e.g., file1.txt, file2.txt) into a single gzip compressed file named "compressed_files.tar.gz
#compress multiple file into a single gzip compressed file named "compressed_files.tar.gz" 
 
tar -czf compressed_files.tar.gz exercise1.sh exercise2.sh

# Check if the compression operation was successful
if [ $? -eq 0 ]; then
    echo "Files compressed successfully into 'compressed_files.tar.gz'."
else
    echo "Failed to compress files into 'compressed_files.tar.gz'."
fi






#Bash script that compresses a directory named "workarea" into a zip archive named "archive.zip" with password protection.

#prompt the user to enter a password
read -s -p "input password for zip archive: " password
echo 

#Compress the directory workarea into a zip archive "archive.zip" with password protection
zip -r --encrypt --password "$password" archive.zip workarea

# Check if the zip operation was successful
if [ $? -eq 0 ]; then
    echo "Zip archive 'archive.zip' created successfully with password protection."
else
    echo "Failed to create zip archive 'archive.zip'."
fi 
