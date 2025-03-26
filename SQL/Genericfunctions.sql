SELECT
    *
FROM
    employees;

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.phone_number,
    e.manager_id,
    nvl(e.manager_id, 'No Manager') nvl_manager_id
FROM
    employees e;

desc employees;

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.phone_number,
    e.manager_id,
    nvl(to_char(e.manager_id),
        'No Manager')    nvl_manager_id_char,
    nvl(e.manager_id, 0) nvl_manager_id_number
FROM
    employees e;

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.phone_number,
    e.manager_id,
    e.commission_pct,
    nvl(e.commission_pct, 0) commission_pct_nvl
FROM
    employees e;

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.phone_number,
    e.manager_id,
    e.commission_pct,
    nvl(e.commission_pct, 0)                                                
    NVL2(expression, value_if_not_null, value_if_null)
                                          
    NVL2(e.commission_pct, 'Has Commission', 'No Commission')

FROM
    employees e;

desc employees;
    
--GREATEST & LEAST

SELECT
    greatest(1, 2, 3, 6, 8),
    least(1, 2, 3, 6, 8)
FROM
    dual;