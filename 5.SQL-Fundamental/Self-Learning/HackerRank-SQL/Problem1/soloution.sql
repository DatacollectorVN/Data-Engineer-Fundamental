-- NOTE: THIS is stupid solution cause I know the how many apperance time of professor column
SELECT Doctor_.Name AS Doctor , Professor_.Name AS Professor, Singer_.Name AS Singer, Actor_.Name AS Actor
FROM (SELECT ROW_NUMBER() OVER () AS new_column, Name
	FROM hackerrank.OCCUPATIONS
	WHERE Occupation IN ('Professor')
    ORDER BY Name
    ) AS Professor_

LEFT JOIN (SELECT ROW_NUMBER() OVER () AS new_column, Name
	FROM hackerrank.OCCUPATIONS
	WHERE Occupation IN ('Doctor')
    ORDER BY Name
    ) AS Doctor_
ON Professor_.new_column = Doctor_.new_column

LEFT JOIN (SELECT ROW_NUMBER() OVER () AS new_column, Name
	FROM hackerrank.OCCUPATIONS
	WHERE Occupation IN ('Singer')
    ORDER BY Name
    ) AS Singer_
ON Professor_.new_column = Singer_.new_column

LEFT JOIN (SELECT ROW_NUMBER() OVER () AS new_column, Name
	FROM hackerrank.OCCUPATIONS
	WHERE Occupation IN ('Actor')
    ORDER BY Name
    ) AS Actor_
ON Professor_.new_column = Actor_.new_column