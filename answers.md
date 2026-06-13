#Task 1
#Command: awk -F',' 'NR>1 {count++} END {print count}' Lab03-data.csv
#Result: 322
#Explanation: The comma is defined as the field separator (-F',') and 'NR>1' discards the header line. The program increments the counter for each row of data and the END block prints the total number of accumulated records.

#Task 2
#Command: awk -F',' 'NR>1 {seen[$1]} END {for (student in seen) count++; print count}' Lab03-data.csv
#Result: 14
#Explanation: Use the first column ($1, the name) as the key of an associative array called 'seen'. Since keys in these arrays cannot be duplicated, only unique records are kept. At the end, the loop iterates through the array counting the total number of stored keys.

#Task 3
#Command: awk -F',' '$3 == "FINAL" {printf "%-10s %3d\n", $1, $4}' Lab03-data.csv
#Result: 
Kenji      162
Shane      193
Noah       116
Lucia      200
Priya      159
Andrew     123
Diana      152
Maria      152
Eliza      141
Tomas      163
Sam        152
Ava        172
Chelsey    142
#Explanation: Filters records by comparing if the third column ($3) is exactly equal to "FINAL". For matching lines, use 'printf' with '%-10s' to left-align the name using 10 spaces and '%3d' to right-align the entire note by 3 spaces.
