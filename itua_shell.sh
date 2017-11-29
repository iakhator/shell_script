#!/bin/bash

separator="\n\n"

# introductory text
echo "Start Executing Script.."
printf $separator

# create parent directory
mkdir iakhator

# move into parent directory
cd iakhator

# create directories
mkdir folder_one folder_two
printf "2 directories have been created"
printf $separator

# list all folders
ls -l
printf $separator

# move into first folder
cd folder_one

# create empty files
touch document_one.txt move_this_document.txt

printf "2 documents have been created"
printf $separator

# Append parameter to the end of the file
echo "My name is Itua" >> document_one.txt

# Append parameter to the end of the file
echo "I am a software engineer" >> move_this_document.txt

# Copy file
cp document_one.txt ../folder_two

printf "1 file copied"
printf $separator

# move back to the parent folder
cd ..

# get and list all files and folders recursively
# pipe it with grep to get the ones containing `first`
# redirect output into move_this_document.txt
ls -R | grep first > folder_one/move_this_document.txt

# move document into second folder
mv folder_one/move_this_document.txt folder_two
printf "1 document moved"
printf $separator

printf "Execution Finished"
