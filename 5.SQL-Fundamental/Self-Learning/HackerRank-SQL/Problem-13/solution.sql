USE hackerrank;
SELECT Start_Date, MIN(End_Date)
FROM(
	SELECT p_1.Start_Date
    FROM Projects AS p_1
    LEFT Join Projects AS p_2
    ON p_1.Start_Date = p_2.End_Date
    WHERE p_2.Start_Date IS NULL
) AS vt_1
CROSS JOIN (
	SELECT p_2.End_Date
    FROM Projects AS p_1
    RIGHT JOIN Projects AS p_2
    ON p_1.Start_Date = p_2.End_Date
    WHERE p_1.End_Date IS NULL
) vt_2
WHERE Start_Date < End_Date
GROUP BY Start_Date
ORDER BY DATEDIFF(MIN(End_Date), Start_Date), Start_Date