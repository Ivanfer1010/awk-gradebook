#Task 1
#Command: awk -F',' 'NR>1 {count++} END {print count}' Lab03-data.csv
#Result: 322
#Explanation: The comma is defined as the field separator (-F',') and 'NR>1' discards the header line. The program increments the counter for each row of data and the END block prints the total number of accumulated records.

#Task 2
#Command: awk -F',' 'NR>1 {seen[$1]} END {for (student in seen) count++; print count}' Lab03-data.csv
#Result: 14
#Explanation: Use the first column ($1, the name) as the key of an associative array called 'seen'. Since keys in these arrays cannot be duplicated, only unique records are kept. At the end, the loop iterates through the array counting the total number of stored keys.