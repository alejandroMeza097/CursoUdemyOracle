/*
Convertir las siguientes cadenas a números
'1210.73'
‘$127.2’
*/
SET SERVEROUTPUT ON;
declare
    variable1 varchar2(20);
    variable2 varchar2(20);
    variable3 number;
    variable4 number;
    v_dump1 varchar2(200);
    v_dump2 varchar2(200);
    v_dump3 varchar2(200);
    v_dump4 varchar2(200);
begin
    variable1 := '1210.73';
    variable2 := '$127.2';
    variable3 := TO_NUMBER(variable1,'9999.99');
    variable4 := TO_NUMBER(variable2,'L999.9');

    SELECT DUMP(variable1) INTO v_dump1 FROM DUAL;
    SELECT DUMP(variable2) INTO v_dump2 FROM DUAL;
    SELECT DUMP(variable3) INTO v_dump3 FROM DUAL;
    SELECT DUMP(variable4) INTO v_dump4 FROM DUAL;

    DBMS_OUTPUT.PUT_LINE(v_dump1);
    DBMS_OUTPUT.PUT_LINE(v_dump2);
    DBMS_OUTPUT.PUT_LINE(v_dump3);
    DBMS_OUTPUT.PUT_LINE(v_dump4);
    DBMS_OUTPUT.PUT_LINE(variable3);
    DBMS_OUTPUT.PUT_LINE(variable4);
end;


/*
Convertir los 3 primeros caracteres del número de teléfono en números y
multiplicarlos por 2
*/

SET SERVEROUTPUT ON;
declare
    numero_completo varchar2(20);
    primeros_numeros varchar2(3);
    primeros_numeros_number number;
begin
    numero_completo := '9541832264';
    primeros_numeros := SUBSTR(numero_completo,1,3);
    primeros_numeros_number := TO_NUMBER(primeros_numeros);
    DBMS_OUTPUT.PUT_LINE(primeros_numeros_number * 2);
end;



/*
Convertir las siguientes cadenas en fecha (NOTA: el mes lo debemos poner en el idioma que tengamos en el SqlDeveloper. Por ejemplo, en
español sería : 
10 DE FEBRERO DE 2018
FACTURA: MARZO0806

En ingles sería:

10 DE FEBRUARY DE 2018
FACTURA: MARCH0806
*/


SET SERVEROUTPUT ON;

declare
    fecha_espagnol varchar2(100);
    factura_espagnol varchar2(30);
    fecha_date date;
    fecha_ingles varchar2(100);
    factura_ingles varchar2(30);
begin
    fecha_espagnol := '10 DE FEBRERO DE 2018';
    factura_espagnol := 'FACTURA: MARZO0806';
    fecha_date:=TO_DATE(fecha_espagnol,'DD "DE" MONTH "DE" YYYY','NLS_DATE_LANGUAGE=SPANISH');
    fecha_ingles := TO_CHAR(fecha_date,'FMDD "DE" MONTH "DE" YYYY','NLS_DATE_LANGUAGE=ENGLISH');

    
    DBMS_OUTPUT.PUT_LINE(fecha_espagnol);
    DBMS_OUTPUT.PUT_LINE(fecha_ingles);
end;


SELECT TO_CHAR(
          TO_DATE('FACTURA: MARZO0806', '"FACTURA: "MONTHYYDD', 'NLS_DATE_LANGUAGE=SPANISH'),
          '"FACTURA: "FMMONTHYYDD',
          'NLS_DATE_LANGUAGE=ENGLISH'
       ) AS RESULTADO
FROM DUAL;