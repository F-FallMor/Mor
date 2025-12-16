#! /usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

read -r -p "Source directory: " source_dir
timestamp=$(date +%Y-%m-%d_%H-%M)
backup_dir="backup_$timestamp"

if [ ! -d "$backup_dir" ]; then
	mkdir -p -- "$backup_dir"
else
	echo "Directory exists: $backup_dir"
fi

# Enable nullglob so a glob with no matches expands to empty
shopt -s nullglob
txt_files=("$source_dir"/*.txt)
if [ ${#txt_files[@]} -eq 0 ]; then
	echo "No .txt files found in '$source_dir'. Nothing to copy."
	exit 0
fi

# Copy files (handles filenames with spaces)
cp -- "${txt_files[@]}" "$backup_dir/"

# Count files in the backup directory
count=$(find "$backup_dir" -maxdepth 1 -type f | wc -l)
echo "Copied $count files to '$backup_dir'."
