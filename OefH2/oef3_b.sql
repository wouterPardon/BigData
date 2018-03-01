CREATE OR REPLACE FUNCTION netto
  (p_bruto_salaris EMPLOYEES.salary%type)
  return VARCHAR2

  AS
    v_netto_salaris EMPLOYEES.salary%type;
  BEGIN
    v_netto_salaris := p_bruto_salaris * 0.6;

    if p_bruto_salaris <=10000 THEN
      v_netto_salaris := p_bruto_salaris * 0.6;

    ELSEIF p_bruto_salaris <= 16000 THEN
      v_netto_salaris :=p_bruto_salaris * 0.6 + (p_bruto_salaris - 10000) * 0.5;

      ELSE

      v_netto_salaris := 1000 * 0.6 + 6000 * 0.5 + (p_bruto_salaris - 16000) * 0.4;

    END IF;
    RETURN to_char(v_netto_salaris, '9,999.00');
  END;
/