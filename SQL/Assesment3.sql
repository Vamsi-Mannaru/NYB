--1
CREATE TABLE employeees (
    emp_id     NUMBER PRIMARY KEY,
    emp_name   VARCHAR2(100),
    salary     NUMBER,
    doj        DATE,
    manager_id NUMBER,
    dept_id    NUMBER
);  

--2
INSERT INTO employeees VALUES (
    101,
    'Vamsi',
    28000,
    TO_DATE('15-06-2020', 'DD-MM-YYYY'),
    NULL,
    1
);

INSERT INTO employeees VALUES (
    102,
    'Yashwanth',
    35000,
    TO_DATE('10-03-2018', 'DD-MM-YYYY'),
    101,
    2
);

INSERT INTO employeees VALUES (
    103,
    'Varaprasad',
    25000,
    TO_DATE('05-01-2022', 'DD-MM-YYYY'),
    NULL,
    1
);

INSERT INTO employeees VALUES (
    104,
    'Deepthi',
    40000,
    TO_DATE('12-07-2017', 'DD-MM-YYYY'),
    102,
    2
);

INSERT INTO employeees VALUES (
    105,
    'Meghana',
    22000,
    TO_DATE('25-11-2021', 'DD-MM-YYYY'),
    103,
    3
);

INSERT INTO employeees VALUES (
    106,
    'Narendra',
    27000,
    TO_DATE('30-09-2019', 'DD-MM-YYYY'),
    NULL,
    1
);

INSERT INTO employeees VALUES (
    107,
    'Sai kiran',
    31000,
    TO_DATE('14-02-2023', 'DD-MM-YYYY'),
    102,
    2
);

INSERT INTO employeees VALUES (
    108,
    'Moulishwar',
    18000,
    TO_DATE('01-04-2024', 'DD-MM-YYYY'),
    NULL,
    3
);

INSERT INTO employeees VALUES (
    109,
    'Priyanka',
    10000,
    TO_DATE('01-12-2024', 'DD-MM-YYYY'),
    NULL,
    3
);

--3a 
SELECT
    *
FROM
    employeees
WHERE
    doj >= add_months(sysdate, - 60);

--3c

SELECT
    emp_id,
    emp_name,
    round(months_between(sysdate, doj) / 12,
          2) AS years_of_service
FROM
    employeees;
    
    
--3b
SELECT
    emp_id,
    emp_name,
    salary,
    ( salary * 12 ) AS annual_salary
FROM
    employeees;