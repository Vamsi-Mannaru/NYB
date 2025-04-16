SELECT
    e.*,
    d.department_name,
    d.location_id
FROM
    employees   e,
    departments d
WHERE
    e.department_id = d.department_id;
    
select * from employees;


--Simple Non-Equi Join

SELECT
    e.*,
    d.department_name
FROM
    employees   e,
    departments d
WHERE
    e.department_id != d.department_id;
    

SELECT
    e.*,
    d.department_id dept_department_id,
    d.department_name
FROM
    employees   e,
    departments d
WHERE
    e.department_id != d.department_id
ORDER BY e.employee_id;


select * from departments;

select 106* 26 from dual;


--Cross Join/Cartesian Product

SELECT
    e.*,
    d.*
FROM
    employees   e,
    departments d
ORDER BY e.employee_id;
    
select count(*) from employees;  
select count(*) from departments; 

select 107 * 27 from dual; 

--SELF Join

SELECT
    e1.*,
    e2.first_name manager_first_name,
    e2.last_name manager_last_name
FROM
    employees e1,
    employees e2
WHERE
    e1.manager_id = e2.employee_id;
    
    
--OUTER Join
--Left Outer Join

SELECT
    e.*,
    d.*
FROM
    employees   e,
    departments d
WHERE
    e.department_id = d.department_id (+);
    
--Right Outer Join

SELECT
    e.*,
    d.*
FROM
    employees   e,
    departments d
WHERE
    e.department_id (+) = d.department_id;
    
    
--Full Outer Join

SELECT
    e.*,
    d.*
FROM
    employees   e,
    departments d
WHERE
    e.department_id = d.department_id (+) 
UNION
SELECT
    e.*,
    d.*
FROM
    employees   e,
    departments d
WHERE
    e.department_id (+) = d.department_id;  