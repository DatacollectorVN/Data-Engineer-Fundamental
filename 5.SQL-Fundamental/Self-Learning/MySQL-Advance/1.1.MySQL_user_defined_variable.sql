SET @start := 900, @end := 2000;

SELECT *
FROM store.customers
WHERE points BETWEEN @start AND @end