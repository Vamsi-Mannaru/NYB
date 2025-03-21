NYB INFOTECH

SQL ASSESSMENT -2 



Table Structure: STUDENTS

Create the table 
Column Name	Data Type	Description


Column Name	Data Type	Description
StudentID	NUMBER(PK)	Unique Id for student
StudentName	VARCHAR2(5)	Student full name
Gender	CHAR(1)	‘M’ or ‘F’
DOM	DATE	Data of Birth

create the table 
INSERT INTO STUDENTS VALUES (1, 'Aarav Kumar', 'M', TO_DATE('2002-05-10', 'YYYY-MM-DD'));
			
			
			
			
			
			
			
			

1	Aarva Kumar	M	'2002-05-10'
2	Sneha Reddy	F	'2001-12-15'
3	Rohan Mehta	M	'2003-02-20'
4	Priya Shah	F	'2000-09-25'
5	Vikram Singh	M	'2002-07-14'
6	Kavya Nair	F	'2001-11-01'
7	Manoj Yadav	M	'2003-04-10'
8	Divya Patel	F	'2002-06-18'
			


Write SQL Queries for the following tasks:
1.	Display all student records.

SELECT
*FROM
    students


2.	Show only student names and genders.
    
SELECT
    studentname,
    gender
FROM
    students



3.	List students born after Jan 1, 2002.
SELECT
    *
FROM
    students
WHERE
    dom > TO_DATE('2002-01-01', 'yyyy-mm-dd');
    




4.the total number of male and female students.
SELECT
    gender,
    COUNT(*) 
FROM
    students
GROUP BY
    gender;




5.Display students sorted by DOB (oldest to youngest).






6.Show students whose name starts with 'S'.
            SELECT
    *
FROM
    students
WHERE
    studentname LIKE 'S';
    






7.Format DOB as 'DD-MON-YYYY'.
SELECT
    studentid,
    studentname,
    gender,
    to_char(dom, 'dd-mon-yyyy') AS formatted_dob
FROM
    students;          




8.Display age of each student using SYSDATE - DOB.





9.Show all female students in descending order of names.
            SELECT
    *
FROM
    students
WHERE
    gender = 'F'
ORDER BY
    studentname DESC;



10.Count how many students are born in each year.
CREATE TABLE students (
    studentid   NUMBER PRIMARY KEY,
    studentname VARCHAR2(50),
    gender      CHAR(1) CHECK ( gender IN ( 'M', 'F' ) ),
    dom         DATE
);

INSERT INTO students VALUES (
    1,
    'Aarav Kumar',
    'M',
    TO_DATE('2002-05-10', 'YYYY-MM-DD')
);

INSERT INTO students VALUES (
    2,
    'Sneha Reddy',
    'F',
    TO_DATE('2001-12-15', 'YYYY-MM-DD')
);

INSERT INTO students VALUES (
    3,
    'Rohan Mehta',
    'M',
    TO_DATE('2003-02-20', 'YYYY-MM-DD')
);

INSERT INTO students VALUES (
    4,
    'Priya Shah',
    'F',
    TO_DATE('2000-09-25', 'YYYY-MM-DD')
);

INSERT INTO students VALUES (
    5,
    'Vikram Singh',
    'M',
    TO_DATE('2002-07-14', 'YYYY-MM-DD')
);

INSERT INTO students VALUES (
    6,
    'Kavya Nair',
    'F',
    TO_DATE('2001-11-01', 'YYYY-MM-DD')
);

INSERT INTO students VALUES (
    7,
    'Manoj Yadav',
    'M',
    TO_DATE('2003-04-10', 'YYYY-MM-DD')
);

INSERT INTO students VALUES (
    8,
    'Divya Patel',
    'F',
    TO_DATE('2002-06-18', 'YYYY-MM-DD')
);
 
