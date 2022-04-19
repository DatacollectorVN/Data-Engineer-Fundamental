USE hackerrank;
SELECT m.hacker_id, h.name, SUM(score) AS total_score 
FROM (SELECT hacker_id, challenge_id, MAX(score) AS score
    FROM Submissions GROUP BY hacker_id, challenge_id
) AS m
INNER JOIN Hackers AS h
ON m.hacker_id = h.hacker_id
GROUP BY m.hacker_id, h.name
HAVING total_score > 0
ORDER BY total_score DESC, m.hacker_id;