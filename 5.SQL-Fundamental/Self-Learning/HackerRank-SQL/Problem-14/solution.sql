USE hackerrank;
SELECT F1.X, F1.Y
FROM Functions AS F1
CROSS JOIN Functions AS F2
WHERE F1.X <= F1.Y
-- Condition of Pair
AND F1.X = F2.Y
AND F2.X = F1.Y
-- Eliminate the redunancy 
GROUP BY F1.X, F1.Y
HAVING 
-- If pair X = Y like (20, 20) and this pair is sysmetric --> appear greater than 2 times --> if appear 2 times --> CROSS JOIN create 4 time.
-- So we accept this case with COUNT() > 2
COUNT(CASE WHEN f1.X=f1.Y THEN f1.X END) > 2
-- If pair X <> Y like (22, 23) this pair is sysmetric --> appear greater than 2 times  but condition X < Y --> CROSS JOIN create only 1
OR COUNT(CASE WHEN f1.X <> f1.Y THEN f1.X END) = 1
ORDER BY f1.X, f1.Y;