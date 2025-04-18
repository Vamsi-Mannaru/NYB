SELECT
    length('79384bfrjbsfhgvb888834345405u9ujhviufugvbndfsiubvndfuo843985knjvf89ghv8')
FROM
    dual;

--REVERSE

SELECT
    reverse('RAVI.')
FROM
    dual;

--UPPER

SELECT
    upper('ravi')
FROM
    dual;
 
--LOWER

SELECT
    lower('RAVI')
FROM
    dual;
    
--INITCAP

SELECT
    initcap('RAVI'),
    initcap('ravi')
FROM
    dual;

SELECT
    concat('Oracle', 'E-Business Suite')
FROM
    dual;

SELECT
    'Oracle' || 'E-Business Suite'
FROM
    dual;

SELECT
    'Oracle'
    || ' '
    || 'E-Business Suite'
FROM
    dual;

SELECT
    '12'
    || ' '
    || '34'
    || ' '
    || '56'
    || ' '
    || '78'
    || ' '
    || '90'
FROM
    dual;

SELECT
    TRIM('e' FROM 'eeeeeeeeeDeepthieeeeeeeeeeeee')
FROM
    dual;

SELECT
    TRIM('e' FROM 'eeeeeeUieeeDeepthieeeeeeYaeeeeeee')
FROM
    dual;

SELECT
    TRIM('e' FROM 'lllDeepthiee')
FROM
    dual;



SELECT
    TRIM('       Deepthi  ')
FROM
    dual;  --Deepthi
    
    

SELECT
    ltrim('eeeeeeeeeDeepthieeeeeeeeeeeee', 'e')
FROM
    dual;
    
    
--RTRIM   
--s = eeeeeeeeeDeepthieeeeeeeeeeeee
--c = e

SELECT
    rtrim('eeeeeeeeeDeepthieeeeeeeeeeeee', 'e')
FROM
    dual;
    
SELECT
    rtrim('       Deepthi  ')
FROM
    dual;   'Deepthi'
    
    
SELECT
    translate('Deepthi', 'e', 'w')
FROM
    dual;
    
SELECT
    translate('Deepthi', 'Deepthi', 'Teja')
FROM
    dual;
    
SELECT
    translate('Deepthi', 'eep', 'wwy')
FROM
    dual;
S'

SELECT
    replace('Oracle E-Business Suite', 'E-Business', 'EBS') replaced_string
FROM
    dual;

SELECT
    replace('Oracle E-Business Suite', 'E-Business Suite', 'EBS') replaced_string
FROM
    dual;


SELECT
    replace('Oracle E-Business Suite', 'E-Business')
FROM
    dual;
    


select * from employees;


SELECT
    employee_id,
    first_name,
    last_name,
    job_id,
    decode(job_id, 'IT_PROG', 'IT Programmer', 'AD_PRES', 'President',
           'ST_CLERK', 'Senior Clerk', job_id) decoded_job_id_value
FROM
    employees;
    
SELECT
    employee_id,
    first_name,
    last_name,
    job_id,
    decode(job_id, 'IT_PROG', 'IT Programmer', 'AD_PRES', 'President',
           'ST_CLERK', 'Senior Clerk', 'No Value To Decode') decoded_job_id_value
FROM
    employees;


SELECT
    e.*,
    decode(e.job_id, 'IT_PROG', 'IT Programmer', 'AD_PRES', 'President',
           'ST_CLERK', 'Senior Clerk', e.job_id) decoded_job_id_value,
    
    decode(e.salary, e.salary>20000, 'High Paid Salary',
    e.salary <= 20000
    AND e.salary > 10000, 'Medium Paid Salary',
                   e.salary<=10000, 'Low Paid Salary',
                   'No Salary') decoded_salary_value
FROM
    employees e;