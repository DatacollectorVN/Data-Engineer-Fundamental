-- This query result return the base virtual table with contain all information that we need.
USE hackerrank;
SELECT *
FROM Contests 
INNER JOIN Colleges ON Contests.contest_id = Colleges.contest_id 
INNER JOIN Challenges ON  Colleges.college_id = Challenges.college_id; 