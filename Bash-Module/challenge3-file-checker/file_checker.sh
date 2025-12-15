#!/bin/bash

# Prompt user for a filename
read -p "Enter filename to check: " filename

# Check if the file exists
if [[ -e "$filename" ]]; then
    echo "File '$filename' exists."

    # Check readability
    if [[ -r "$filename" ]]; then
        echo "✓ File is readable"
    else
        echo "✗ File is not readable"
    fi

    # Check writability
    if [[ -w "$filename" ]]; then
        echo "✓ File is writable"
    else
        echo "✗ File is not writable"
    fi

    # Check executability
    if [[ -x "$filename" ]]; then
        echo "✓ File is executable"
    else
        echo "✗ File is not executable"
    fi

else
    echo "✗ File '$filename' does not exist."
fi
