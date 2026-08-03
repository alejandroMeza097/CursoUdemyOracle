--Indicar los empleados que entraron en Mayo en la empresa. Debemos buscar por la abreviatura del mes
SELECT FIRST_NAME, LAST_NAME,EMAIL,HIRE_DATE
FROM EMPLOYEES
WHERE TO_CHAR(HIRE_DATE, 'FMMONTH') = 'MAY';


--Indicar los empleados que entraron en el año 2007 usando la función to_char
SELECT FIRST_NAME, LAST_NAME, EMAIL,HIRE_DATE
FROM EMPLOYEES
WHERE TO_CHAR(HIRE_DATE,'YYYY') = '2007';

--¿Qué día de la semana (en letra) era el día que naciste?
SELECT TO_CHAR(TO_DATE('29/01/1997'),'DAY') FROM DUAL;

--Averiguar los empleados que entraron en el mes de Junio. Debemos preguntar por el mes en letra. Nota: La función TO_CHAR puede
-- devolver espacios a la derecha)
SELECT FIRST_NAME || ' ' || LAST_NAME AS "FULL NAME", HIRE_DATE 
FROM EMPLOYEES
WHERE TRIM(TO_CHAR(HIRE_DATE,'MONTH')) = 'JUNE';


--Visualizar el salario de los empleados con dos decimales y en dólares y también en la moneda local (el ejemplo es con euros, suponiendo que el
--cambio esté en 0,79$)
SELECT SALARY, TO_CHAR(SALARY,'$99999.99') AS "SALARY IN USD",TO_CHAR(SALARY * 17.33,'$999999.99') AS "SALARY IN MXN" FROM EMPLOYEES;