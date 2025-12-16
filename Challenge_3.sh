#! /bin/bash
read -p "Enter directory: " directory
if [ -d $directory ]; then
 echo "Directory exists"
else 
 echo "Directory does not exist"
 exit 1
fi

read -p "Enter file name: " filename
if [ -f "$directory/$filename" ];then
 echo "File exists"
 
else
 echo "File does not exists"
 exit 1
fi

if [ -r "$directory/$filename" ]; then
 echo "File is readable"
else
echo "file is not readable"
fi

if [ -w "$directory/$filename" ]; then
 echo "File is writable"
else
echo "file is not writable"
fi

if [ -x "$directory/$filename" ]; then
 echo "File is executable"
else
echo "file is not executable"
fi