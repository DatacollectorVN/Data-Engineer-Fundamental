USE hackerrank;
-- Create and insert Company table
CREATE TABLE IF NOT EXISTS Company(
	conpany_code CHAR(100),
    founder CHAR(100)
);
INSERT INTO Company VALUES ('C1', 'Monika');
INSERT INTO Company VALUES ('C2', 'Samantha');

-- Create and insert  Lead_Manager table
CREATE TABLE IF NOT EXISTS Lead_Manager(
	lead_manager_code CHAR(100),
    company_code CHAR(100)
);
INSERT INTO Lead_Manager VALUES ('LM1', 'C1');
INSERT INTO Lead_Manager VALUES ('LM2', 'C2');

-- Create and insert  Senior_Manager table
CREATE TABLE IF NOT EXISTS Senior_Manager(
	senior_manager_code CHAR(100),
    lead_manager_code CHAR(100),
    company_code CHAR(100)
);
INSERT INTO Senior_Manager VALUES ('SM1', 'LM1', 'C1');
INSERT INTO Senior_Manager VALUES ('SM2', 'LM1', 'C1');
INSERT INTO Senior_Manager VALUES ('SM3', 'LM2', 'C2');

-- Create and insert  Manager table
CREATE TABLE IF NOT EXISTS Manager(
	manager_code CHAR(100),
    senior_manager_code CHAR(100),
    lead_manager_code CHAR(100),
    company_code CHAR(100)
);
INSERT INTO Manager VALUES ('M1', 'SM1', 'LM1', 'C1');
INSERT INTO Manager VALUES ('M2', 'SM3', 'LM2', 'C2');
INSERT INTO Manager VALUES ('M3', 'SM3', 'LM2', 'C2');

-- Create and insert  Employee table
CREATE TABLE IF NOT EXISTS Employee(
	employee_code CHAR(100),
    manager_code CHAR(100),
    senior_manager_code CHAR(100),
    lead_manager_code CHAR(100),
    company_code CHAR(100)
);
INSERT INTO Employee VALUES ('E1', 'M1', 'SM1', 'LM1', 'C1');
INSERT INTO Employee VALUES ('E2', 'M1', 'SM1', 'LM1', 'C1');
INSERT INTO Employee VALUES ('E3', 'M2', 'SM3', 'LM2', 'C2');
INSERT INTO Employee VALUES ('E4', 'M3', 'SM3', 'LM2', 'C2');