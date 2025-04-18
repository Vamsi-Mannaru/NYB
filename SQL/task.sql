//1
CREATE TABLE studentsss (
    student_id    NUMBER PRIMARY KEY,
    first_name    VARCHAR2(30) NOT NULL,
    last_name     VARCHAR2(30),
    email         VARCHAR2(50) UNIQUE,
    dob           DATE,
    phone_number  VARCHAR2(10) CHECK ( length(phone_number) = 10 ),
    department_id NUMBER
);
//2
CREATE TABLE departmentss (
    department_id      NUMBER PRIMARY KEY,
    department_name    VARCHAR2(50) NOT NULL,
    head_of_department VARCHAR2(50)
);

ALTER TABLE studentsss
    ADD CONSTRAINT fk_dept FOREIGN KEY ( department_id )
        REFERENCES departmentss ( department_id );
//3
INSERT INTO departmentss VALUES (
    1,
    'Computer Science',
    'CMR'
);

INSERT INTO departmentss VALUES (
    2,
    'Mathematics',
    'RAJESH'
);

INSERT INTO departmentss VALUES (
    3,
    'Physics',
    'VARAPRASAD'
);

INSERT INTO departmentss VALUES (
    4,
    'Chemistry',
    'SUSHMA'
);

INSERT INTO departmentss VALUES (
    5,
    'English',
    'MANJU'
);

INSERT INTO studentsss VALUES (
    101,
    'Vamsi',
    'Mannaru',
    'vamsi.mannaru@gmail.com',
    TO_DATE('2001-05-15', 'YYYY-MM-DD'),
    '9876543210',
    1
);

INSERT INTO studentsss VALUES (
    102,
    'Nagendra',
    'Reddy',
    'nagendra.reddy@gmail.com',
    TO_DATE('1999-03-10', 'YYYY-MM-DD'),
    '0987654321',
    2
);

INSERT INTO studentsss VALUES (
    103,
    'Deepthi',
    'akka',
    'deepthi.akka@gmail.com',
    TO_DATE('2002-12-22', 'YYYY-MM-DD'),
    '9876543212',
    1
);

INSERT INTO studentsss VALUES (
    104,
    'Moulishwar',
    'Kumar',
    'moulishwar.kumar@gmail.com',
    TO_DATE('2000-11-05', 'YYYY-MM-DD'),
    '1234567890',
    3
);

INSERT INTO studentsss VALUES (
    105,
    'Charan',
    'Teja',
    'charan.teja@gmail.com',
    TO_DATE('2003-07-19', 'YYYY-MM-DD'),
    '9876543214',
    2
);
//4
SELECT
    *
FROM
    studentsss
WHERE
    dob > TO_DATE('2000-12-31', 'YYYY-MM-DD');

SELECT
    d.department_name,
    COUNT(s.student_id) AS total_students
FROM
    departmentss d
    LEFT JOIN studentsss   s ON d.department_id = s.department_id
GROUP BY
    d.department_name;

SELECT
    *
FROM
    studentsss
ORDER BY
    last_name;


