
# Purpose: Produce a summary table with low, high, and average score per assignment.

BEGIN {
    FS = ","
    printf "%-12s %4s %4s %7s\n", "Name", "Low", "High", "Average"
}
NR > 1 {
    code = $3
    score = $4
    count[code]++
    sum[code] += score
    
    if (!(code in min) || score < min[code]) min[code] = score
    if (!(code in max) || score > max[code]) max[code] = score
}
END {
    # To ensure they print in alphabetical order, in traditional awk they sometimes appear out of order,
    # but the professor only asks to display the data.
    for (code in count) {
        avg = sum[code] / count[code]
        printf "%-12s %4d %4d %7.2f\n", code, min[code], max[code], avg
    }
}