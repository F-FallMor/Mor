#! /bin/bash

#ask user to enter dir path
read -p "Source directory: " source_dir

timestamp=$(date +%Y-%m-%d_%H-%M)
backup_dir="backup_$timestamp"

#check if backupp file with timestamp exists
if [ ! -d "$backup_dir" ]; then
  mkdir "$backup_dir"
  echo "Backup directory created: $backup_dir"
else
  echo "Directory already exists"
fi

#copy *files into the backup dir
cp "$source_dir"/*.txt "$backup_dir"

#count number of files
count=$(ls "$source_dir"/*.txt | wc -l)

#final message
echo "Backup complete! Files backed up: $count"

