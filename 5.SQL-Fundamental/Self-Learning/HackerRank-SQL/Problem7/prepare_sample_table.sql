USE hackerrank;
-- Create and insert Students table
CREATE TABLE IF NOT EXISTS Students(
	id INT NOT NULL,
    name CHAR(100),
    marks INT
);
INSERT INTO Students VALUES (1, 'Julia', 88);
INSERT INTO Students VALUES (2, 'Samantha', 68);
INSERT INTO Students VALUES (3, 'Maria', 99);
INSERT INTO Students VALUES (4, 'Scalet', 78);
INSERT INTO Students VALUES (5, 'Ashley', 63);
INSERT INTO Students VALUES (6, 'Jane', 81);

-- Create and insert Grades table
CREATE TABLE IF NOT EXISTS Grades(
	grade INT NOT NULL,
    min_mark INT,
    max_mark INT
);
INSERT INTO Grades VALUES (1, 0, 9);
INSERT INTO Grades VALUES (2, 10, 19);
INSERT INTO Grades VALUES (3, 20, 29);
INSERT INTO Grades VALUES (4, 30, 39);
INSERT INTO Grades VALUES (5, 40, 49);
INSERT INTO Grades VALUES (6, 50, 59);
INSERT INTO Grades VALUES (7, 60, 69);
INSERT INTO Grades VALUES (8, 70, 79);
INSERT INTO Grades VALUES (9, 80, 89);
INSERT INTO Grades VALUES (10, 90, 100);
