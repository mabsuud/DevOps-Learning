#!/bin/bash

# Create a directory called bash_demo
mkdir -p bash_demo
echo "Directory 'bash_demo' created."

# Navigate into the directory
cd bash_demo || exit

# Create a file called demo.txt
touch demo.txt
echo "File 'demo.txt' created."

# Write text to the file including the current date
current_date=$(date +"%Y-%m-%d")
echo "This file was created by a Bash script on $current_date" > demo.txt

# Display the file contents
echo
echo "File contents:"
cat demo.txt
