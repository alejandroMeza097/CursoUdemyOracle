-- Indicar el número de días que los empleados llevan en la empresa
SELECT TRUNC(SYSDATE - HIRE_DATE,2) AS "DIAS LABORANDO" FROM EMPLOYEES;

--Indicar la fecha que será dentro de 15 días
SELECT SYSDATE + 15 AS "FECHA EN 15 DIAS" FROM DUAL;

--¿Cuántos MESES faltan para la navidad? La cifra debe salir redondeada, con 1 decimal
SELECT ROUND(MONTHS_BETWEEN('31/12/2026',SYSDATE),1) AS "MESES PARA NAVIDAD" FROM DUAL;

--Indicar la fecha de entrada de un empleado y el último día del mes que entró
SELECT HIRE_DATE,LAST_DAY(HIRE_DATE) AS "ULTIMO DIA DEL MES QUE ENTRO" FROM EMPLOYEES;

--Utilizando la función ROUND, indicar los empleados que entraron en los últimos 15 días de cada mes
SELECT FIRST_NAME, LAST_NAME,HIRE_DATE,ROUND(HIRE_DATE,'MONTH') AS "PRIMER QUINCENA" FROM EMPLOYEES WHERE ROUND(HIRE_DATE,'MONTH') > HIRE_DATE;
SELECT FIRST_NAME, LAST_NAME,HIRE_DATE,ROUND(HIRE_DATE,'MONTH') AS "PRIMER QUINCENA" FROM EMPLOYEES;