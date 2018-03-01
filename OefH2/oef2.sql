CREATE or REPLACE FUNCTION aantal_dienstjaren
(p_hireDate employees.hire_date%type)
return number
AS
	v_dienstjaren number(2);
BEGIN
	v_dienstjaren := trunc(months_between(sysdate, p_hireDate) / 12);
RETURN
	v_dienstjaren;
END;
/