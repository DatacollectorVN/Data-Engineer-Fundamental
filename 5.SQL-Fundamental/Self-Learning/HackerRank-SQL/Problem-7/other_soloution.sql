USE hackerrank;
SELECT (CASE WHEN grades.grade < 8 THEN NULL 
    WHEN grades.grade >= 8 THEN students.name END),
    grades.grade, students.marks 
FROM students, grades
WHERE students.marks BETWEEN grades.min_mark AND grades.max_mark
ORDER BY grades.grade DESC, students.name ASC;