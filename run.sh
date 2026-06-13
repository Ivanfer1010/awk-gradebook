#!/bin/bash
# Purpose: Run student_grade.awk and sort the output alphabetically.

# Check if we typed the file name when running it
if [ -z "$1" ]; then
    echo "Usage: $0 <filename.csv>"
    exit 1
fi

FILE="$1"

# Print the header (first line of the result)
awk -f student_grade.awk "$FILE" | head -n 1

# Print the data body (starting from line 2) sorted alphabetically
awk -f student_grade.awk "$FILE" | tail -n +2 | sort -k1,1