CREATE TABLE xxnyb_constraints_test (
    sno             NUMBER,
    constraint_name VARCHAR2(50) NOT NULL,
    comments        VARCHAR2(500)
);

INSERT INTO xxnyb_constraints_test VALUES (
    1,
    'Not Null',
    'It should not allow NULL values'
);

COMMIT;

INSERT INTO xxnyb_constraints_test (
    sno,
    comments
) VALUES (
    2,
    'No comments'
);

ALTER TABLE xxnyb_constraints_test MODIFY
    sno NUMBER UNIQUE;

desc XXNYB_CONSTRAINTS_TEST;

INSERT INTO xxnyb_constraints_test VALUES (
    2,
    'Unique',
    'It wont allow Duplicate values'
);

SELECT
    *
FROM
    xxnyb_constraints_test;

INSERT INTO xxnyb_constraints_test VALUES (
    2,
    'Duplicate Unique',
    'No Comments'
);

SELECT
    *
FROM
    xxnyb_constraints_test;

CREATE TABLE xxnyb_constraints_desc_test (
    col_id    NUMBER,
    col_name  VARCHAR2(100),
    col_idx   NUMBER,
    CONSTRAINT pk_xxnyb PRIMARY KEY (col_id)
);

    
ALTER TABLE xxnyb_constraints_desc_test
ADD CONSTRAINT const_sno_fk FOREIGN KEY ( constraint_sno )
REFERENCES xxnyb_constraints_test ( sno );

ALTER TABLE XXNYB_EMPLOYEES_TEST
ADD CONSTRAINT dept_id_chk
check(department_id <= 60);

INSERT INTO xxnyb_employees_test VALUES (
    1004,
    'Vali',
    sysdate - 260,
    30
);

COMMIT;

ALTER TABLE xxnyb_employees_test MODIFY
    hire_date DEFAULT sysdate;

desc XXNYB_EMPLOYEES_TEST;

INSERT INTO xxnyb_employees_test (
    employee_id,
    employee_name,
    department_id
) VALUES (
    1005,
    'Meghana',
    40
);

COMMIT;

INSERT INTO xxnyb_employees_test (
    employee_id,
    employee_name,
    department_id
) VALUES (
    1006,
    'Charan',
    50
);

COMMIT;

SELECT
    *
FROM
    xxnyb_employees_test
ORDER BY
    employee_id;



