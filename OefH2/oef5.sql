CREATE OR replace function volgende_vergadering
  (p_datum DATE)
  RETURN DATE IS
    v_datum_volgende_vergadering DATE;
  BEGIN
        v_datum_volgende_vergadering := next_day(last_day(p_datum), 'MAANDAG') ;

        if to_char(v_datum_volgende_vergadering, 'fmDD-MM') = '01-01' OR  to_char(v_datum_volgende_vergadering, 'fmDD-MM') = '01-05'
          THEN
         v_datum_volgende_vergadering := next_day(v_datum_volgende_vergadering, 'DINSDAG');
        END IF;
    RETURN v_datum_volgende_vergadering;
  END;
  /