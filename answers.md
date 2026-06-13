#Task 1
#Command: awk -F',' 'NR>1 {count++} END {print count}' Lab03-data.csv
#Result: 322
#Explanation: The comma is defined as the field separator (-F',') and 'NR>1' discards the header line. The program increments the counter for each row of data and the END block prints the total number of accumulated records.