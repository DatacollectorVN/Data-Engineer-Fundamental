USE hackerrank;
SELECT vt_1.count_challenges, COUNT(*) AS no_duplication
FROM(
SELECT COUNT(*) AS count_challenges
FROM Challenges_1
GROUP BY hacker_id
) AS vt_1
GROUP BY vt_1.count_challenges
HAVING no_duplication = 1 -- --> To eliminate the all rows with duplication of count_challenges.  
