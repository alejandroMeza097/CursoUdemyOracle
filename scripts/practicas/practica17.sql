--Indicar el número de empleados del departamento 50
SELECT DEPARTMENT_ID,COUNT(*) AS "PERSONAL IN DEP 50"
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 50
GROUP BY DEPARTMENT_ID ;


--Indicar el número de empleados que entraron en el año 2007 a trabajar
SELECT COUNT(*)
FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN TO_DATE('01-01-2007') AND TO_DATE('31-12-2007');


--Indicar la diferencia entre el sueldo más alto y al mínimo
SELECT MAX(SALARY) - MIN(SALARY) ,MAX(SALARY),MIN(SALARY)
FROM EMPLOYEES;


--Visualizar la suma del salario del departamento 100
SELECT DEPARTMENT_ID,SUM(SALARY)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING DEPARTMENT_ID = 100;


--Mostrar el salario medio por departamento, con dos decimales
SELECT DEPARTMENT_ID,TRUNC(AVG(SALARY),2) AS "AVG SALARY"
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;


--Mostrar el country_id y el número de ciudades que hay en ese país.

SELECT COUNTRY_ID,COUNT(*) AS "NUMBER OF CITIES"
FROM LOCATIONS
GROUP BY COUNTRY_ID;

--Mostrar el promedio de salario de los empleados por departamento que
--tengan comisión

SELECT DEPARTMENT_ID,TRUNC(AVG(SALARY),2) AS "AVG SALARY"
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL
GROUP BY DEPARTMENT_ID;

--Mostrar los años en que ingresaron más de 10 empleados
SELECT TO_CHAR(HIRE_DATE,'YYYY'),COUNT(*)
FROM EMPLOYEES
GROUP BY TO_CHAR(HIRE_DATE,'YYYY')
HAVING COUNT(*) > 10;

--Mostrar por departamento y año el número de empleados que ingresaron

SELECT DEPARTMENT_ID,TO_CHAR(HIRE_DATE,'YYYY'),COUNT(*)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID,TO_CHAR(HIRE_DATE,'YYYY');

--Mostrar los departament_id de los departamentos que tienen managers
--que tienen a cargo más de 5 empleados

SELECT DISTINCT DEPARTMENT_ID
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID, MANAGER_ID
HAVING COUNT(*) > 5;