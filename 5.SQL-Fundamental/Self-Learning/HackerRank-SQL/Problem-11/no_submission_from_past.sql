-- If like query all information in the past.
-- i.e index: 0 --> get all information of past of first day (none)
-- 	   index: 2 --> get all information of past of third day ('2016-03-02' and '2016-03-01')

USE hackerrank;
SELECT 
	(SELECT count(*)
	 FROM Submissions_2 AS vt_3
     WHERE vt_3.submission_date < vt_1.submission_date
	) AS no_submissions_from_past
FROM (SELECT DISTINCT Submissions_2.submission_date FROM Submissions_2) as vt_1



 