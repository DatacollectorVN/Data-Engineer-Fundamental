USE hackerrank;
SELECT h.hacker_id 
     , h.name
     , COUNT(*) AS count_challenges
FROM hackers_3 as h
     INNER JOIN Challenges_1 as c ON h.hacker_id=c.hacker_id
GROUP BY h.hacker_id, h.name
-- If more than one student created the same number of challenges and the count is less than the maximum 
-- number of challenges created, then exclude those students from the result. 
HAVING count_challenges = (SELECT MAX(vt_1.count_challenges)
     FROM(
          SELECT COUNT(*) AS count_challenges
          FROM Challenges_1
          GROUP BY hacker_id
          ) AS vt_1
     )
OR count_challenges IN (SELECT vt_1.count_challenges 
     FROM(
          SELECT COUNT(*) AS count_challenges
          FROM Challenges_1
          GROUP BY hacker_id
          ) AS vt_1
     GROUP BY count_challenges
     HAVING COUNT(*) = 1
     ) -- it is vt_2
ORDER BY count_challenges DESC, h.hacker_id