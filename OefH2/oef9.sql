CREATE OR REPLACE FUNCTION get_jubileumdatum
(p_lastName employees.last_name%TYPE, p_firstName employees.first_name%TYPE)

RETURN varchar IS
	v_hireDate employees.hire_date%TYPE;
	v_huidigeDatum DATE;
	v_JubileDate varchar2(255);
	v_AantalJaar number;
	v_presentHireDate date;
	BEGIN
		select hire_date INTO v_hireDate from employees 
			where last_name = p_lastName 
				and first_name = p_firstName;
				
		select sysdate into v_huidigeDatum from dual;

		v_aantalJaar := TO_NUMBER(to_char(v_huidigeDatum, 'fmYYYY'), '9999') - TO_NUMBER(to_char(v_hireDate, 'fmYYYY'), '9999');
		v_presentHireDate := ADD_MONTHS(v_hireDate, 25*12);
		
		if v_aantalJaar = 25 THEN
			if LOWER(TO_CHAR(v_presentHireDate, 'DAY')) = 'vrijdag' then
				v_JubileDate := to_char(v_presentHireDate, 'fmDD/MM/YYYY');
			else
				v_JubileDate := to_char(NEXT_DAY(v_presentHireDate, 'vrijdag'), 'fmDD/MM/YYYY');
			END if;
		else 
			v_JubileDate := 'Geen jubileum datum';
		END IF;

		RETURN  v_JubileDate;
	END;
	/