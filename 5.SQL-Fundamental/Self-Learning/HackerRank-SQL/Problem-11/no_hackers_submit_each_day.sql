-- If like query all information at that day.
-- i.e index: 0 --> get all information of first day ('2016-03-01')
-- 	   index: 2 --> get all information of third day ('2016-03-03')

USE hackerrank;
SELECT submission_date,
	(SELECT COUNT(DISTINCT S2.hacker_id ) FROM Submissions_2 AS S2
	WHERE (S2.submission_date = S1.submission_date)
    ) AS no_hacker_submit_each_day
FROM (SELECT DISTINCT submission_date FROM Submissions_2) AS S1

 