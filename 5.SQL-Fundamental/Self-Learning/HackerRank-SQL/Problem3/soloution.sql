USE hackerrank;
SELECT c.company_code, c.founder,
COUNT(DISTINCT lm.lead_manager_code) AS 'Total number lead managers',
COUNT(DISTINCT sm.senior_manager_code) AS 'Total number senior managers',
COUNT(DISTINCT m.manager_code) AS 'Total number managers', 
COUNT(DISTINCT e.employee_code) AS 'Total number senior employeess'
FROM Company AS c, Lead_Manager AS lm, Senior_Manager AS sm, Manager AS m, Employee AS e
WHERE
c.company_code = lm.company_code AND
lm.lead_manager_code = sm.lead_manager_code AND
sm.senior_manager_code = m.senior_manager_code AND
m.manager_code=e.manager_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code ASC;

