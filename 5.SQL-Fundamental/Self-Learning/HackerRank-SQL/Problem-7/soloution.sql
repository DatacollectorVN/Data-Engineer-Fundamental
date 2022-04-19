USE hackerrank;
SELECT IF (grades.grade < 8, NULL , students.name),
    grades.grade, students.marks 
FROM students, grades
WHERE students.marks BETWEEN grades.min_mark AND grades.max_mark
ORDER BY grades.grade DESC, students.name ASC;