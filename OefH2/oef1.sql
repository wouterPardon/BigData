CREATE OR REPLACE FUNCTION dagen_einde_maand
RETURN number
IS

BEGIN

RETURN last_day(sysdate) - sysdate;
END;
/

SELECT trunc(months_between(sysdate, HIRE_DATE)) FROM EMPLOYEES;

CREATE or REPLACE FUNCTION  adf()
  IS

  BEGIN

  return
  END;

  select aantal_dienstjaren(hire_date) as Dienstjaren, last_name, first_name from employees;