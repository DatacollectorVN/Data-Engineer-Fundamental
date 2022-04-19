USE hackerrank;
SELECT *
FROM (Contests 
    INNER JOIN Colleges ON Contests.contest_id = Colleges.contest_id 
    INNER JOIN Challenges ON  Colleges.college_id = Challenges.college_id
) 
LEFT JOIN (SELECT challenge_id, SUM(total_views) AS total_views, SUM(total_unique_views) AS total_unique_views
    FROM view_stats GROUP BY challenge_id) AS vt_2
ON Challenges.challenge_id = vt_2.challenge_id 
LEFT JOIN (SELECT challenge_id, SUM(total_submissions) AS total_submissions, 
    SUM(total_accepted_submissions) AS total_accepted_submissions 
    FROM submission_stats GROUP BY  challenge_id) AS vt_3 
ON Challenges.challenge_id = vt_3.challenge_id
