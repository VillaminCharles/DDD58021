CREATE DATABASE Exercise1;
SELECT * FROM exercise1;
CREATE TABLE EMP_1table(
	EMP_NUM char(3),
    EMP_Lname varchar(15),
    EMP_FNAME varchar(15),
    EMP_INITIAL char(1),
    EMP_HIREDATE date,
    JOB_CODE char(3)
    ); 
SELECT * FROM exercise1;
INSERT INTO emp_1table (EMP_NUM, EMP_Lname, EMP_FNAME, EMP_INITIAL, EMP_HIREDATE, JOB_CODE)
VALUES ('1', 'Villamin', 'Charles Ian','B', '2023-03-23', '502');
INSERT INTO emp_1table (EMP_NUM, EMP_Lname, EMP_FNAME, EMP_INITIAL, EMP_HIREDATE, JOB_CODE)
VALUES ('2', 'Villamin', 'Tj','B', '2023-02-24', '501');
SELECT * FROM exercise1.emp_1table;                                                                   
UPDATE emp_1table SET JOB_CODE = '502' WHERE JOB_CODE = 501; 
SET SQL_SAFE_UPDATES=0;

TRUNCATE TABLE EMP_1table;
INSERT INTO emp_1table (EMP_NUM, EMP_Lname, EMP_FNAME, EMP_INITIAL, EMP_HIREDATE, JOB_CODE)
VALUES ('101','Nevas','John','G','1994-11-08','502'), 
('102','Senior','David','H','1987-07-12',501), 
('103','Arbos','June','E','1996-12-01','500'), 
('104','Ramoras','Anne','K','1998-11-15','501'), 
('105','Joson', 'Alice', 'P','1993-02-01','502'),
('106', 'Smith', 'William', 'D', '1990-06-23', 500),
('107', 'Alonso', 'Mara', 'F', '1991-10-10', 500),
('108', 'Washington', 'Raf', 'S', '1989-08-22', 501),
('109', 'Field', 'Larry', 'W', '1999-07-18', 501);

UPDATE emp_1table SET JOB_CODE = '501' WHERE EMP_NUM = 106; 
DELETE FROM EMP_1table WHERE EMP_NUM ='106';


