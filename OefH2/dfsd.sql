select get_jubileumdatum(last_name, first_name), hire_date, LAST_NAME,  to_char(HIRE_DATE, 'DAY') from employees;

SELECT to_char(add_months(HIRE_DATE, 12*25), '') FROM EMPLOYEES WHERE LAST_NAME = 'De Haan';
