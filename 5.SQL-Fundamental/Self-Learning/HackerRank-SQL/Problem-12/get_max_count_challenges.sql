USE hackerrank;
SELECT MAX(vt_1.challenges_created)
FROM (SELECT hacker_id, COUNT(*) AS challenges_created
FROM Challenges_1
GROUP BY hacker_id) as vt_1
-- In my sample is 6 and in HackerRank is 50