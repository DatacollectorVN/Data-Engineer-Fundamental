/* Get value count of column according to value of other column.
In this case:
- Get value count of P column according to N column of BST_1 table.
*/
SELECT N, (SELECT COUNT(*) FROM hackerrank.BST_1 WHERE P=B.N)
FROM hackerrank.BST_1 AS B
ORDER BY N;