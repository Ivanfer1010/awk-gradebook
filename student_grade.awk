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
    # Ordenar la salida no es estrictamente necesario en awk estándar, 
    # pero el profesor pide los datos procesados.
    for (name in earned) {
        pct = (earned[name] / possible[name]) * 100
        
        if (pct >= 90)      grade = "A"
        else if (pct >= 80) grade = "B"
        else if (pct >= 70) grade = "C"
        else if (pct >= 60) grade = "D"
        else                grade = "E"
        
        printf "%-12s %10.2f %5s\n", name, pct, grade
    }
}