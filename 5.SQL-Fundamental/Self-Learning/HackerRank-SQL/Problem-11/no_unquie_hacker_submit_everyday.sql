USE hackerrank;
SET @start_date := '2016-03-01';
SELECT submission_date,

       (SELECT Count(DISTINCT hacker_id) as no_of_unique_hacker_id FROM Submissions_2 AS vt_2
        WHERE  vt_2.submission_date = vt_1.submission_date
        AND (SELECT Count(DISTINCT vt_3.submission_date)
             FROM   Submissions_2 AS vt_3
             WHERE  vt_3.hacker_id = vt_2.hacker_id
             AND vt_3.submission_date < vt_1.submission_date
	    ) = Datediff(vt_1.submission_date, @start_date)
       ) AS No_unquie_hacker_submit_everyday
FROM (SELECT DISTINCT submission_date FROM Submissions_2) AS vt_1