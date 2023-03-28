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

