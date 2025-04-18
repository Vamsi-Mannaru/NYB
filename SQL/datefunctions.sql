
--SYSDATE

select SYSDATE from dual;

--CURRENT_DATE

select CURRENT_DATE from dual;

--SYSDATE vs CURRENT_DATE

SELECT
    to_char(sysdate, 'dd-Mon-yyyy hh24:mi:ss')      system_server_date,
    to_char(current_date, 'dd-Mon-yyyy hh24:mi:ss') user_date
FROM
    dual;
    


SELECT
    add_months('19-Mar-2025', 9) months_added_date
FROM
    dual;
    
--n = -9

SELECT
    add_months('19-Mar-2025', -9) months_added_date
FROM
    dual;
    
    
SELECT
    to_char(add_months('19-Mar-2025', 9999), 'dd-Mon-yyyy') months_added_date
FROM
    dual;
    


SELECT
    months_between('19-Dec-2025', '19-Jun-2024')
FROM
    dual;
        
SELECT
    months_between('19-Jun-2024', '19-Dec-2025')
FROM
    dual;
    


SELECT
    next_day('19-Mar-2025', 'Sun') next_day_date
FROM
    dual;
    
--day ='Mon'

SELECT
    next_day('19-Mar-2025', 'Mon') next_day_date
FROM
    dual;

SELECT
    next_day('19-Mar-2025', 'Tue') next_day_date
FROM
    dual;
    
    
--LAST_DAY
--d = '19-Mar-2025'

SELECT
    last_day('19-Mar-2025') last_day_date
FROM
    dual;
    
SELECT
    last_day('19-Feb-2025') last_day_date_2025,
    last_day('19-Feb-2024') last_day_date_2024
FROM
    dual;