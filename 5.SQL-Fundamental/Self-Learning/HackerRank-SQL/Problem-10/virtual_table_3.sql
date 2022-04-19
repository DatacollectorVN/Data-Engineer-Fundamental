USE hackerrank;
SELECT challenge_id, 
    SUM(total_submissions) AS total_submissions, 
    SUM(total_accepted_submissions) AS total_accepted_submissions 
FROM Submission_Stats 
GROUP BY challenge_id;