USE hackerrank;
-- Create and insert Hackers table
CREATE TABLE IF NOT EXISTS Hackers (
	hacker_id INT NOT NULL, 
    name CHAR(100)
);
INSERT INTO Hackers VALUES (4071, 'Rose');
INSERT INTO Hackers VALUES (4806, 'Angela');
INSERT INTO Hackers VALUES (26071, 'Frank');
INSERT INTO Hackers VALUES (49438, 'Patrick');
INSERT INTO Hackers VALUES (74842, 'Lisa');
INSERT INTO Hackers VALUES (80305, 'Kimberly');
INSERT INTO Hackers VALUES (84072, 'Bonnie');
INSERT INTO Hackers VALUES (87868, 'Michael');
INSERT INTO Hackers VALUES (92118, 'Todd');
INSERT INTO Hackers VALUES (95895, 'Joe');

-- Create and insert Submissions table
CREATE TABLE IF NOT EXISTS Submissions (
	submission_id INT NOT NULL, 
    hacker_id INT,
    challenge_id INT,
    score INT
);
INSERT INTO Submissions VALUES (67194, 74842, 63132, 76);
INSERT INTO Submissions VALUES (64479, 74842, 19797, 98);
INSERT INTO Submissions VALUES (40742, 26071, 49593, 20);
INSERT INTO Submissions VALUES (17513, 4806, 49593, 32);
INSERT INTO Submissions VALUES (69846, 80305, 19797, 19);
INSERT INTO Submissions VALUES (41002, 26071, 89343, 36);
INSERT INTO Submissions VALUES (52826, 49438, 49593, 9);
INSERT INTO Submissions VALUES (31093, 26071, 19797, 2);
INSERT INTO Submissions VALUES (81614, 84072, 49593, 100);
INSERT INTO Submissions VALUES (44829, 26071, 89343, 17);
INSERT INTO Submissions VALUES (75147, 80305, 49593, 48);
INSERT INTO Submissions VALUES (14115, 4806, 49593, 76);
INSERT INTO Submissions VALUES (6943, 4071, 19797, 95);
INSERT INTO Submissions VALUES (12855, 4806, 25917, 13);
INSERT INTO Submissions VALUES (73343, 80305, 49593, 42);
INSERT INTO Submissions VALUES (84264, 84072, 63132, 0);
INSERT INTO Submissions VALUES (9951, 4071, 49593, 43);
INSERT INTO Submissions VALUES (45104, 49438, 25917, 34);
INSERT INTO Submissions VALUES (53795, 74842, 19797, 5);
INSERT INTO Submissions VALUES (26363, 26071, 19797, 29);
INSERT INTO Submissions VALUES (10063, 4071, 49593, 96);