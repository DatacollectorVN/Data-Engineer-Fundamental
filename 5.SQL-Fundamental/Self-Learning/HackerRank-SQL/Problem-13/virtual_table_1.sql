-- Query the Start_Date of Project.
SELECT p_1.Start_Date
FROM Projects AS p_1
LEFT Join Projects AS p_2
ON p_1.Start_Date = p_2.End_Date
WHERE p_2.Start_Date IS NULL