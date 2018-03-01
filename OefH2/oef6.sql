create or replace function next_employee_id
return varchar is
	v_HoogsteNummer number;
	v_nieuwsteHoogsteNummer varchar2(255);
begin
	select max(employee_id) into v_hoogsteNummer from employees;
				
	v_nieuwsteHoogsteNummer := v_hoogsteNummer + 1;

	RETURN v_nieuwsteHoogsteNummer;
end;
/