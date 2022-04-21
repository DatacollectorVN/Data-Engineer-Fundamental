-- Query the End_Date of Project.
SELECT p_2.End_Date
FROM Projects AS p_1
RIGHT JOIN Projects AS p_2
ON p_1.Start_Date = p_2.End_Date
WHERE p_1.End_Date IS NULL