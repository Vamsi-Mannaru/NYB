-- SYNONYM
SHOW USER;  -- HR

-- Private Synonym
-- Giving select privileges ON HR.XXNYB_EMPLOYEES_TEST TO RKDEMO

GRANT SELECT ON HR.XXNYB_EMPLOYEES_TEST TO RKDEMO;

GRANT SELECT ON HR.XXNYB_EMPLOYEES_TEST TO HR;

-- Public Synonym

-- Create public synonym on HR.XXNYB_SQL_TUTORIAL for all schemas

GRANT SELECT ON HR.XXNYB_SQL_TUTORIAL TO PUBLIC;

CREATE PUBLIC SYNONYM xxnyb_sql_tutorial FOR HR.XXNYB_SQL_TUTORIAL;

GRANT SELECT ON HR.XXNYB_SQL_SESSION TO PUBLIC;

CREATE PUBLIC SYNONYM xxnyb_sql_session FOR HR.XXNYB_SQL_SESSION;




SHOW USER;

SELECT * FROM HR.XXNYB_EMPLOYEES_TEST;

-- Create private synonym in RKDEMO schema against HR.XXNYB_EMPLOYEES_TEST

CREATE SYNONYM xxnyb_employees_test FOR HR.XXNYB_EMPLOYEES_TEST;

SELECT * FROM xxnyb_employees_test;

DROP SYNONYM xxnyb_employees_test;

-- Creating synonym without matching database object name

CREATE SYNONYM xxnyb_emp_t FOR HR.XXNYB_EMPLOYEES_TEST;

SELECT * FROM xxnyb_emp_t;

SELECT * FROM xxnyb_sql_tutorial;

SELECT * FROM xxnyb_sql_session;

