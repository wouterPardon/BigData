create or replace FUNCTION schrikkelJaar
return VARCHAR2 IS
  v_dagFebruari varchar2(10);
  BEGIN
    SELECT to_char(last_day(TO_DATE('01-FEB-' || to_char(sysdate, 'YYYY'), 'DD-MON-YYYY')), 'DD')
      INTO v_dagFebruari
      FROM dual;

    if v_dagFebruari = 29 THEN
      return 'Schrikkeljaar';
    ELSE
      return 'Geen Schrikkeljaar';
    end IF;
  END;
/