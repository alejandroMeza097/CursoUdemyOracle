/*
Visualizar el nombre del país y el nombre de la región. (tablas COUNTRIES
y REGIONS). Usar un natural join
*/

SELECT COUNTRY_NAME,REGION_NAME
FROM COUNTRIES
NATURAL JOIN REGIONS;


/*
Usando el ejemplo anterior visualizar también el nombre de la ciudad
añadiendo una nueva tabla (LOCATIONS)
*/
SELECT C.COUNTRY_NAME,R.REGION_NAME,LOC.CITY
FROM COUNTRIES C
JOIN LOCATIONS LOC
ON C.COUNTRY_ID = LOC.COUNTRY_ID
JOIN REGIONS R 
ON C.REGION_ID = R.REGION_ID;


--Indicar el nombre del departamento y la media de sus salarios
select * from EMPLOYEES;
select * from DEPARTMENTS;

SELECT DEP.DEPARTMENT_NAME,ROUND(AVG(EMP.SALARY),2) AS "AVG SALARY PER DEPARTMENT"
FROM EMPLOYEES EMP
JOIN DEPARTMENTS DEP
ON EMP.DEPARTMENT_ID = DEP.DEPARTMENT_ID
GROUP BY DEP.DEPARTMENT_NAME;


/*
Mostrar el nombre del departamento, el del manager a cargo y la ciudad a la
que pertenece. Debemos usar la cláusula ON y/o la cláusula USING para
realizar la operación
*/
SELECT DEP.DEPARTMENT_NAME,EMP.FIRST_NAME,EMP.JOB_ID,LOC.CITY
FROM DEPARTMENTS DEP
JOIN EMPLOYEES EMP
ON DEP.MANAGER_ID = EMP.EMPLOYEE_ID
JOIN LOCATIONS LOC
ON LOC.LOCATION_ID = DEP.LOCATION_ID;

/*
Mostrar job_title, el department_name, el last_name de empleado y
hire_date de todos los empleados que entraron entre el 2000 y el 2004.
Usar cláusulas using
*/

SELECT JOB.JOB_TITLE,DEP.DEPARTMENT_NAME,EMP.LAST_NAME AS "NAME",TO_CHAR(EMP.HIRE_DATE,'DD-MM-YYYY') AS "HIRE DATE"
FROM EMPLOYEES EMP
JOIN DEPARTMENTS DEP
USING (DEPARTMENT_ID)
JOIN JOBS JOB
USING (JOB_ID)
WHERE EMP.HIRE_DATE BETWEEN TO_DATE('01-01-2000') AND TO_DATE('31-12-2004');


/*
Mostrar el job_title y la media de los salarios de cada uno, siempre que la
media supere los 7000
*/

SELECT JOB.JOB_TITLE,AVG(SALARY)
FROM JOBS JOB
JOIN EMPLOYEES EMP
ON JOB.JOB_ID = EMP.JOB_ID
GROUP BY JOB.JOB_TITLE;


/*
Mostrar el nombre de la región y el número de departamentos en cada una
de las regiones
*/

SELECT DEP.DEPARTMENT_NAME,LOC.COUNTRY_ID,C.REGION_ID
FROM DEPARTMENTS DEP
JOIN LOCATIONS LOC
ON DEP.LOCATION_ID = LOC.LOCATION_ID
JOIN COUNTRIES C
ON C.COUNTRY_ID = LOC.COUNTRY_ID;

/*Mostrar el nombre del empleado, el departamento y el país donde trabaja 
(debemos usar la cláusual using) */
SELECT E.FIRST_NAME || ' ' || E.LAST_NAME AS "NAME",DEP.DEPARTMENT_NAME,LOCS.COUNTRY_ID,COUN.COUNTRY_NAME FROM 
EMPLOYEES E
JOIN DEPARTMENTS DEP
ON DEP.DEPARTMENT_ID = E.DEPARTMENT_ID
JOIN LOCATIONS LOCS
ON LOCS.LOCATION_ID = DEP.LOCATION_ID
JOIN COUNTRIES COUN
ON COUN.COUNTRY_ID = LOCS.COUNTRY_ID;

