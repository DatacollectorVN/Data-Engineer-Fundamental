USE hackerrank;
SET @start_date := '2016-03-01';
SELECT submission_date,

       (SELECT Count(DISTINCT hacker_id) as no_of_unique_hacker_id FROM Submissions_2 AS vt_2
        WHERE  vt_2.submission_date = vt_1.submission_date
        AND (SELECT Count(DISTINCT vt_3.submission_date)
             FROM   Submissions_2 AS vt_3
             WHERE  vt_3.hacker_id = vt_2.hacker_id
             AND vt_3.submission_date < vt_1.submission_date
	    ) = DATEDIFF(vt_1.submission_date, @start_date)
       ) AS No_unquie_hacker_submit_everyday,

       (SELECT hacker_id FROM Submissions_2 AS temp_2
        WHERE  temp_2.submission_date = vt_1.submission_date
        GROUP  BY hacker_id
        ORDER  BY Count(submission_id) DESC, hacker_id ASC LIMIT  1 
       ) AS Max_submission,

       (SELECT name FROM hackers
        WHERE  hacker_id = Max_submission
       ) AS Name_hacker
FROM (SELECT DISTINCT submission_date FROM Submissions_2) AS vt_1;

