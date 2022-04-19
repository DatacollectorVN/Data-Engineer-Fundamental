USE hackerrank;
SELECT *
FROM submissions_1 AS s
INNER JOIN Challenges AS c ON c.challenge_id = s.challenge_id 
INNER JOIN Difficulty AS d ON d.difficulty_level = c.difficulty_level AND d.score = s.score
INNER JOIN Hackers_1 AS h ON s.hacker_id = h.hacker_id 