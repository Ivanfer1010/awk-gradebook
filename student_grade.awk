# Purpose: Compute final percentage scores and letter grades per student.

BEGIN {
    FS = ","
    printf "%-12s %10s %5s\n", "Student", "Percentage", "Grade"
}
NR > 1 {
    name = $1
    earned[name] += $4
    possible[name] += $5
}
END {
    for (name in earned) {
        pct = (earned[name] / possible[name]) * 100
        total_class_pct += pct
        student_count++
        
        if (pct >= 90)      grade = "A"
        else if (pct >= 80) grade = "B"
        else if (pct >= 70) grade = "C"
        else if (pct >= 60) grade = "D"
        else                grade = "E"
        
        printf "%-12s %10.2f %5s\n", name, pct, grade
    }
    class_avg = total_class_pct / student_count
    printf "%-12s %10.2f\n", "Average", class_avg
}