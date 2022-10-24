WITH max_salary AS (
    SELECT departmentId, MAX(salary) AS salary FROM Employee GROUP BY departmentId
)
SELECT 
    D.name AS Department
    , E.name AS Employee
    , E.Salary
FROM Employee AS E
INNER JOIN Department AS D ON E.departmentId = D.id
INNER JOIN max_salary ON max_salary.departmentId = E.departmentId and max_salary.salary = E.salary