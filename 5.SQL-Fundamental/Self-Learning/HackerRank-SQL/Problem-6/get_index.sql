USE hackerrank;
SET @rowindex := -1; -- Assign -1 cause the index always start 0 (@index + 1)
SELECT @rowindex := @rowindex + 1 AS rowindex, LAT_N
FROM STATION