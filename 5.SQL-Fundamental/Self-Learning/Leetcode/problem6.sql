-- SOLUTION 1
CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        SELECT salary from Employee e1 where 
        @N -1 = (SELECT COUNT(DISTINCT salary)from Employee e2 where e2.salary > e1.salary) 
    );
END


-- SOLUTION 2
CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        SELECT salary
        FROM (
            SELECT salary, DENSE_RANK() OVER(ORDER BY salary DESC) AS rank_salary
            FROM Employee
        ) AS temp
        WHERE temp.rank_salary = @N
    );
END