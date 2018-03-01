create or replace FUNCTION schrikkelJaar
  (year VARCHAR2)
return VARCHAR2 IS
  v_dagFebruari varchar2(10);
  BEGIN
     v_dagFebruari := to_char(last_day(TO_DATE('01-FEB-' || year, 'DD-MON-YYYY')), 'DD');

    if v_dagFebruari = 29 THEN
      return 'Schrikkeljaar';
    ELSE
      return 'Geen Schrikkeljaar';
    end IF;
  END;
/
