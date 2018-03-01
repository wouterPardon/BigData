CREATE OR REPLACE FUNCTION bereken_brutoJaarLoon
(p_employee_id employees.employee_id%type)

return number is 
	v_salary employees.salary%type;
	v_nieuwBedrag number;
	v_com employees.commission_pct%type;
begin
	select salary, nvl(commission_pct, 0) into v_salary, v_com from employees where employee_id = p_employee_id;
	
	v_nieuwBedrag := (v_salary + v_salary * v_com) * 12;
	return v_nieuwBedrag;
end;
/