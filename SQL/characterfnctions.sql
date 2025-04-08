select TRIM('f' from 'edfedfedfedfVamsiedfedfedf')
from dual;



SELECT
    lpad('Vamsi', 10, '&')
FROM
    dual;

SELECT
    lpad('Vamsi', 10, '&') as "LPAD ExAmPle",
    lpad('Vamsi', 10, '&') LPAD_Example
FROM
    dual;
    


SET DEFINE OFF;
SELECT
    lpad('&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&Vamsi',
         10 + length('&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&Vamsi'),
         '%') LPAD_EXAMPLE
FROM
    dual;
    



SELECT
    rpad('Vamsi', 10, '&') rpad_example
FROM
    dual;
    


 

SELECT
    substr('Chandeep', 1, 4) substr_example
FROM
    dual;
    


SELECT
    substr('Chandeep', -1, 4) substr_example
FROM
    dual;
    


SELECT
    substr('Chandeep', -5, 4) substr_example
FROM
    dual;


 
 SELECT
    instr('Chandeeeeep', 'e', 1, 2) instr_example
FROM
    dual;
    


 SELECT
    instr('Chandeeeeep', 'e', 1) instr_example
FROM
    dual;
    
    --n=5

 SELECT
    instr('Chandeeeeep', 'e', 1, 5) instr_example
FROM
    dual;
    
--m= -1

 SELECT
    instr('Chandeeeeep', 'e', -1) instr_example
FROM
    dual;
    
--m = -1
--n = 5

 SELECT
    instr('Chandeeeeep', 'e', -1, 5) instr_example
FROM
    dual;
    
    
--m = -7

 SELECT
    instr('Chandeeeeep', 'e', -7) instr_example
FROM
    dual;
    


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
    


--REPLACE Function

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
                   e.salary<=20000 and e.salary>10000, 'Medium Paid Salary',
                   e.salary<=10000, 'Low Paid Salary',
                   'No Salary') decoded_salary_value
FROM
    employees e;



    
select e.*,
       CASE WHEN salary>20000
             THEN 'High Paid Salary'
            WHEN salary BETWEEN 10000 AND 20000
             THEN 'Medium Paid Salary'
            WHEN salary <= 10000
             THEN 'Low Paid Salary'
            ELSE
              'No Salary'
        END case_salary_value
  from employees e;
  
n

SELECT
    e.*,
    CASE
        WHEN e.salary > 20000
             AND e.commission_pct IS NOT NULL THEN
            'High Paid Salary With Commission - ' || e.commission_pct
        WHEN e.salary > 20000
             AND commission_pct IS NULL THEN
            'High Paid Salary With No Commission'
        WHEN e.salary BETWEEN 10000 AND 20000
             AND e.commission_pct IS NOT NULL THEN
            'Medium Paid Salary With Commission - ' || e.commission_pct
        WHEN e.salary BETWEEN 10000 AND 20000
             AND e.commission_pct IS NULL THEN
            'Medium Paid Salary With No Commission'
        WHEN salary <= 10000
             AND e.commission_pct IS NOT NULL THEN
            'Low Paid Salary With Commission - ' || e.commission_pct
        WHEN salary <= 10000
             AND e.commission_pct IS NULL THEN
            'Low Paid Salary With No Commission'
        ELSE
            'No Salary'
    END case_salary_value
FROM
    employees e;
