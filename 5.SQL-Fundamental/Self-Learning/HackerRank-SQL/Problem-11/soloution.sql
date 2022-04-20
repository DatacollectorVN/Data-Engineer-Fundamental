USE hackerrank;
SET @start_date := '2016-03-01';
SELECT submission_date,

       (SELECT Count(DISTINCT hacker_id) as no_of_unique_hacker_id FROM Submissions_2 AS S2
        WHERE  S2.submission_date = S1.submission_date
        AND (SELECT Count(DISTINCT S3.submission_date)
             FROM   Submissions_2 AS S3
             WHERE  S3.hacker_id = S2.hacker_id
             AND S3.submission_date < S1.submission_date
	    ) = Datediff(S1.submission_date, @start_date)
       ) AS No_unquie_hacker_submit_everyday,

       (SELECT hacker_id FROM Submissions_2 S2
        WHERE  S2.submission_date = S1.submission_date
        GROUP  BY hacker_id
        ORDER  BY Count(submission_id) DESC, hacker_id ASC LIMIT  1 
       ) AS Max_submission,

       (SELECT name FROM hackers
        WHERE  hacker_id = Max_submission
       ) AS NAME
FROM (SELECT DISTINCT submission_date FROM Submissions_2) S1