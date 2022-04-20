USE hackerrank;
SELECT CH.hacker_id, H.name, COUNT(CH.challenge_id) AS count_ch
FROM Hackers_3 AS H INNER JOIN Challenges_1 AS CH
ON H.hacker_id = CH.hacker_id
GROUP BY  H.hacker_id, H.name
HAVING count_ch = (SELECT COUNT(*)
	FROM Challenges_1 AS temp_1 
    GROUP BY temp_1.hacker_id
    ORDER BY COUNT(*) DESC LIMIT 1)
OR count_ch NOT IN (SELECT COUNT(temp_2.challenge_id) 
	FROM Challenges_1 AS temp_2
    GROUP BY temp_2.hacker_id
    HAVING temp_2.hacker_id <> CH.hacker_id)
ORDER BY count_ch DESC, H.hacker_id