USE hackerrank;
CREATE TABLE IF NOT EXISTS Contests(
	contest_id INT,
    hacker_id INT,
    name CHAR(100)
);
INSERT INTO Contest VALUES (66406, 17973, 'Rose');
INSERT INTO Contest VALUES (66556, 79153, 'Angela');
INSERT INTO Contest VALUES (94828, 80275, 'Frank');

CREATE TABLE IF NOT EXISTS Colleges(
	college_id INT,
    contest_id INT
);
INSERT INTO Colleges VALUES (11219, 66406);
INSERT INTO Colleges VALUES (32473, 66556);
INSERT INTO Colleges VALUES (56685, 94828);

CREATE TABLE IF NOT EXISTS Challenges(
	challenge_id INT,
    college_id INT
);
INSERT INTO Challenges VALUES (18765, 11219);
INSERT INTO Challenges VALUES (47127, 11219);
INSERT INTO Challenges VALUES (60292, 32473);
INSERT INTO Challenges VALUES (72974, 56685);

CREATE TABLE IF NOT EXISTS View_Stats(
	challenge_id INT,
    total_views INT,
    total_unique_views INT
);
INSERT INTO View_Stats VALUES (47127, 26, 19);
INSERT INTO View_Stats VALUES (47127, 15, 14);
INSERT INTO View_Stats VALUES (18765, 43, 10);
INSERT INTO View_Stats VALUES (18765, 72, 13);
INSERT INTO View_Stats VALUES (75516, 35, 17);
INSERT INTO View_Stats VALUES (60292, 11, 10);
INSERT INTO View_Stats VALUES (72974, 41, 15);
INSERT INTO View_Stats VALUES (75516, 75, 11);

CREATE TABLE IF NOT EXISTS Submission_Stats(
	challenge_id INT,
    total_submissions INT,
    total_accepted_submissions INT
);
INSERT INTO Submission_Stats VALUES (75516, 34, 12);
INSERT INTO Submission_Stats VALUES (47127, 27, 10);
INSERT INTO Submission_Stats VALUES (47127, 56, 18);
INSERT INTO Submission_Stats VALUES (75516, 74, 12);
INSERT INTO Submission_Stats VALUES (75516, 83, 8);
INSERT INTO Submission_Stats VALUES (72974, 68, 24);
INSERT INTO Submission_Stats VALUES (72974, 82, 14);
INSERT INTO Submission_Stats VALUES (47127, 28, 11);