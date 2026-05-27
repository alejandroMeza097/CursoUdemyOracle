--Listar las ciudades de la tabla LOCATIONS no tienen STATE_PROVINCE
SELECT CITY,STATE_PROVINCE FROM LOCATIONS WHERE STATE_PROVINCE IS NULL;

--Averiguar el nombre, salario y comisión de aquellos empleados que tienen
--comisión. También debemos visualizar una columna calculada denominada
--“Sueldo Total”, que sea el sueldo más la comisión
SELECT FIRST_NAME || ' ' || LAST_NAME AS "NAME", SALARY, COMMISSION_PCT, SALARY + SALARY + COMMISSION_PCT AS "SUELDO TOTAL" FROM EMPLOYEES;
SELECT FIRST_NAME || ' ' || LAST_NAME AS "NAME", SALARY, COMMISSION_PCT, SALARY + SALARY * COMMISSION_PCT AS "SUELDO TOTAL" FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL;
