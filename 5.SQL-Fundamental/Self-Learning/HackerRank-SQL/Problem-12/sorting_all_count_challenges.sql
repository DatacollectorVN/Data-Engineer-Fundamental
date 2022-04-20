-- Virtual Table 1
USE hackerrank;
SELECT H.hacker_id, H.name, COUNT(CH.challenge_id) AS count_challenges
FROM (
	Hackers_3 AS H INNER JOIN Challenges_1 AS CH
    ON H.hacker_id = CH.hacker_id
)
GROUP BY  H.hacker_id, H.name
ORDER BY count_ch DESC, H.hacker_id 