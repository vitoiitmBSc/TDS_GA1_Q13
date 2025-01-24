#!/bin/bash

# Create target directory
mkdir -p target_directory

# Move all files from subdirectories to the target directory
find . -type f -exec mv {} target_directory/ \;

# Change to the target directory
cd target_directory

# Rename files by replacing each digit with the next one
for file in *; do
    new_name=$(echo "$file" | sed 's/[0-9]/&+1/g' | sed 's/10/0/g')
    mv "$file" "$new_name"
done

