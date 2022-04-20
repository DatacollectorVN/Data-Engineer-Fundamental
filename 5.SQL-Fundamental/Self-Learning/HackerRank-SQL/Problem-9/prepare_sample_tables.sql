USE hackerrank;
-- Create and insert Hackers table
CREATE TABLE IF NOT EXISTS Hackers_1 (
	hacker_id INT NOT NULL, 
    name CHAR(100)
);
INSERT INTO Hackers_1 VALUES (5580, 'Rose');
INSERT INTO Hackers_1 VALUES (8439, 'Angela');
INSERT INTO Hackers_1 VALUES (27205, 'Frank');
INSERT INTO Hackers_1 VALUES (52243, 'Patrick');
INSERT INTO Hackers_1 VALUES (52348, 'Lisa');
INSERT INTO Hackers_1 VALUES (57645, 'Kimberly');
INSERT INTO Hackers_1 VALUES (77726, 'Bonnie');
INSERT INTO Hackers_1 VALUES (83082, 'Michael');
INSERT INTO Hackers_1 VALUES (86870, 'Todd');
INSERT INTO Hackers_1 VALUES (90411, 'Joe');

-- Create and insert Submissions table
CREATE TABLE IF NOT EXISTS Submissions_1 (
	submission_id INT NOT NULL, 
    hacker_id INT,
    challenge_id INT,
    score INT
);
INSERT INTO Submissions_1 VALUES (68628, 77726, 36566, 30);
INSERT INTO Submissions_1 VALUES (65300, 77726, 21089, 10);
INSERT INTO Submissions_1 VALUES (40326, 52243, 36566, 77);
INSERT INTO Submissions_1 VALUES (8941, 27205, 4810, 4);
INSERT INTO Submissions_1 VALUES (83554, 77726, 66730, 30);
INSERT INTO Submissions_1 VALUES (43353, 52243, 66730, 0);
INSERT INTO Submissions_1 VALUES (55385, 52348, 71055, 20);
INSERT INTO Submissions_1 VALUES (39784, 27205, 71055, 23);
INSERT INTO Submissions_1 VALUES (94613, 86870, 71055, 30);
INSERT INTO Submissions_1 VALUES (45788, 52348, 36566, 0);
INSERT INTO Submissions_1 VALUES (93058, 86870, 36566, 30);
INSERT INTO Submissions_1 VALUES (7344, 8439, 66730, 92);
INSERT INTO Submissions_1 VALUES (2721, 8439, 4810, 36);
INSERT INTO Submissions_1 VALUES (523, 5580, 71055, 4);
INSERT INTO Submissions_1 VALUES (49105, 52348, 66730, 0);
INSERT INTO Submissions_1 VALUES (55877, 57645, 66730, 80);
INSERT INTO Submissions_1 VALUES (38355, 27205, 66730, 35);
INSERT INTO Submissions_1 VALUES (3924, 8439, 36566, 80);
INSERT INTO Submissions_1 VALUES (97397, 90411, 66730, 100);
INSERT INTO Submissions_1 VALUES (84162, 83082, 4810, 40);
INSERT INTO Submissions_1 VALUES (97431, 90411, 71055, 30);

-- Create and insert Difficulty table
CREATE TABLE IF NOT EXISTS Difficulty (
	difficulty_level INT, 
    score INT
);
INSERT INTO Difficulty VALUES (1, 20);
INSERT INTO Difficulty VALUES (2, 30);
INSERT INTO Difficulty VALUES (3, 40);
INSERT INTO Difficulty VALUES (4, 60);
INSERT INTO Difficulty VALUES (5, 80);
INSERT INTO Difficulty VALUES (6, 100);
INSERT INTO Difficulty VALUES (7, 120);

-- Create and insert Challenges table
CREATE TABLE IF NOT EXISTS Challenges (
	challenge_id INT,
    hacker_id INT,
    difficulty_level INT
);
INSERT INTO Challenges VALU\ES (4810, 77726, 4);
INSERT INTO Challenges VALUES (21089, 272205, 1);
INSERT INTO Challenges VALUES (36566, 5580, 7);
INSERT INTO Challenges VALUES (66730, 52243, 6);
INSERT INTO Challenges VALUES (71055, 52243, 2);