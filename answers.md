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

#Task 4
#Command: awk -F',' 'NR>1 {if ($4 < ($5 * 0.60)) fail++} END {print fail}' Lab03-data.csv
Result: 50
#Explanation: Omitting the header, it uses an 'if' conditional to evaluate whether the grade obtained ($4) is less than 60% of the maximum grade allowed in that row ($5 * 0.60). If the condition is met, it increments the 'fail' counter and prints the accumulated total in the END block.

#Task 5
Command: awk -f assignment_report.awk Lab03-data.csv
Result: 
Name          Low High Average
Q06             8   20   14.71
L05            17   50   38.21
WS              2    5    4.21
L06            27   50   40.07
Q07            12   20   15.36
L07            21   50   38.43
H01            46  100   82.71
H02            55  100   77.57
H03            62  100   82.43
H04            32   97   72.93
H05            51  100   74.00
H06            37   98   74.21
H07            40  100   72.93
Q01             9   20   14.29
L01            27   50   40.21
Q02             9   20   14.86
L02            23   50   39.21
Q03             8   20   15.07
L03            19   50   36.57
Q04            13   20   16.43
FINAL         116  200  156.86
Q05             8   18   15.07
L04            25   50   40.36
Explanation: A script file (.awk) is created. The script uses associative arrays indexed by the code for each assignment to dynamically store the minimum, maximum, and total sum of grades. In the END block, the average is calculated and the columns are formatted as a table.

## Task 6
Command: awk -f student_grade.awk Lab03-data.csv
Result: 
Student      Percentage Grade
Tomas             82.22     B
Diana             62.08     D
Andrew            73.69     C
Lucia             89.53     B
Kenji             86.45     B
Chelsey           62.65     D
Eliza             84.16     B
Shane             93.12     A
Noah              63.08     D
Ava               81.43     B
Maria             79.57     C
Priya             71.04     C
Jackson           78.64     C
Sam               72.90     C
Explanation: Sum all points earned and possible, accumulating them by student name using arrays. Finally, in the END block, calculate the total weighted percentage and an if/else if statement defines the corresponding grade.

## Task 7
Command: ./run.sh Lab03-data.csv
Result: 
Student      Percentage Grade
Andrew            73.69     C
Ava               81.43     B
Chelsey           62.65     D
Diana             62.08     D
Eliza             84.16     B
Jackson           78.64     C
Kenji             86.45     B
Lucia             89.53     B
Maria             79.57     C
Noah              63.08     D
Priya             71.04     C
Sam               72.90     C
Shane             93.12     A
Tomas             82.22     B
Explicación: El envoltorio de Bash comprueba que el archivo se recibe como argumento. A continuación, ejecuta el script AWK en dos partes: primero, utiliza 'head -n 1' para extraer e imprimir el encabezado fijo, y luego utiliza 'tail -n +2' canalizado a 'sort -k1,1' para tomar las líneas restantes y ordenarlas alfabéticamente utilizando la primera columna.