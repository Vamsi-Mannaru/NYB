self join

select e1.* from employees e1, employees e2
where e1.department_id = e2.department_id
and e2.department_id = 20;

select * from employees
where department_id = 20;

OUTER JOIN

SELECT
    e.*,
    d.department_name
FROM
    employees   e,
    departments d
WHERE
    e.department_id = d.department_id (+) ;
    
    select * from departments;

SELECT
    e.employee_id, e.first_name, e.last_name, e.email, d.*
FROM
    employees   e,
    departments d
WHERE
    e.department_id (+) = d.department_id ;
    
    elect * from departments;

SELECT
    e.employee_id, e.first_name, e.last_name, e.email, d.*
FROM
    employees   e,
    departments d
WHERE
    e.department_id (+) = d.department_id ;
    
    
    FULL OUTER JOIN
SELECT
    e.*,
    d.department_name
FROM
    employees   e,
    departments d
WHERE
    e.department_id = d.department_id (+)
UNION ALL
SELECT
    e.*,
    d.department_name
FROM
    employees   e,
    departments d
WHERE
    e.department_id (+) = d.department_id;

    
