SELECT N, IF(P IS NULL, 'Root',
	IF((SELECT COUNT(*) FROM hackerrank.BST_1 WHERE P = B.N) > 0, 'Inner', -- ELSE IF
    'Leaf')) AS 'Node type' -- ELSE
FROM hackerrank.BST_1 AS B ORDER BY N;