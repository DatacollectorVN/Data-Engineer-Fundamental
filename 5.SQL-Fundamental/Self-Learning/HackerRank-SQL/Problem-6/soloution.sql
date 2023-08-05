USE hackerrank;
SET @rowindex := -1;
SELECT ROUND(AVG(S1.LAT_N), 4)
FROM (SELECT @rowindex := @rowindex + 1 AS rowindex, LAT_N
    FROM STATION    
    ORDER BY LAT_N
) AS S1
WHERE S1.rowindex IN (FLOOR(@rowindex / 2) , CEIL(@rowindex / 2));
-- REMEMBER: The value of @rowindex in WHERE clause = (length of column - 1). Mean it is last update of @rowindex.
/*
i.e: 
+ length of data = 5 --> @rowindex = 4 --> FLOOR(@rowindex / 2) = 2 and CEIL(@rowindex / 2) = 2
+ length of data = 6 --> @rowindex = 5 --> FLOOR(@rowindex / 2) = 2 and CEIL(@rowindex / 2) = 3
*/
