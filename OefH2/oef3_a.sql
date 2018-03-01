CREATE OR REPLACE FUNCTION netto
  (p_bruto_salaris EMPLOYEES.salary%type)
  return VARCHAR2

  AS
    v_netto_salaris EMPLOYEES.salary%type;
  BEGIN
    v_netto_salaris := p_bruto_salaris * 0.6;
    RETURN to_char(v_netto_salaris, '9,999.00');
  END;
/