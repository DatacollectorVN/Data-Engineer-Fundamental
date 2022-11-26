SELECT
    D.Name AS 'Department'
    , E1.Name AS 'Employee'
    , E1.Salary
FROM
    Employee AS E1
        JOIN
    Department AS D ON E1.DepartmentId = D.Id
WHERE
    3 > (SELECT
            COUNT(DISTINCT E2.Salary)
        FROM
            Employee AS E2
        WHERE
            E2.Salary > E1.Salary
                AND E1.DepartmentId = E2.DepartmentId
        )

-- Other solution:
WITH temp1 AS(
SELECT 
    departmentId
    , name
    , salary
    , DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) AS [rankSalary]
FROM 
Employee
)
SELECT 
    D.name AS Department
    , T.name AS Employee
    , T.salary AS Salary
FROM temp1 AS T
INNER JOIN Department AS D ON T.departmentId = D.id
WHERE T.rankSalary <= 3
ORDER BY T.rankSalary ASC, T.salary DESC, D.name ASC, T.name ASC