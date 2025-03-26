--Aggregate Functions
--MIN

SELECT
    *
FROM
    employees;

SELECT
    MIN(salary)
FROM
    employees;

SELECT
    department_id,
    MIN(salary)
FROM
    employees
GROUP BY
    department_id
ORDER BY
    department_id;

--MAX

SELECT
    department_id,
    MAX(salary)
FROM
    employees
GROUP BY
    department_id
ORDER BY
    department_id;

SELECT
    department_id,
    MAX(salary),
    MIN(salary)
FROM
    employees
GROUP BY
    department_id
ORDER BY
    department_id;
    
--AVG

SELECT
    department_id,
    AVG(salary)
FROM
    employees
GROUP BY
    department_id
ORDER BY
    department_id;

SELECT
    employee_id,
    salary
FROM
    employees
WHERE
    department_id = 50;

SELECT
    SUM(salary) / 45
FROM
    employees
WHERE
    department_id = 50;

SELECT
    department_id,
    round(AVG(salary),
          3) avg_rounded_salary,
    trunc(AVG(salary),
          3) avg_trunc_salary
FROM
    employees
GROUP BY
    department_id
ORDER BY
    department_id;
    

--SUM


SELECT
    department_id,
    SUM(salary)
FROM
    employees
GROUP BY
    department_id
ORDER BY
    department_id;
    
    
--COUNT


SELECT
    *
FROM
    employees;

SELECT
    COUNT(*)
FROM
    employees;  --107   --1177 times

--11*107

SELECT
    11 * 107
FROM
    dual;

SELECT
    COUNT(employee_id)
FROM
    employees; --107  --107 times

SELECT
    COUNT(commission_pct)
FROM
    employees; --35 

SELECT
    department_id,
    COUNT(employee_id),
    COUNT(commission_pct)
FROM
    employees
GROUP BY
    department_id
ORDER BY
    department_id;

SELECT
    department_id,
    MIN(salary)   AS "++++++Min Salary+++++++",
    MAX(salary)   max_salary,
    AVG(salary)   avg_salary,
    SUM(salary)   sum_salary,
    COUNT(salary) salary_count
FROM
    employees
GROUP BY
    department_id
ORDER BY
    department_id;
