/*
Indicar el nombre del empleado y el de su jefe (SELF_JOIN de la tabla 
EMPLOYEES)
*/

SELECT EA.FIRST_NAME || ' ' || EA.LAST_NAME AS "MANAGER NAME ", EB.FIRST_NAME || ' ' || EB.LAST_NAME AS "EMPLOYEE NAME"
FROM EMPLOYEES EA
JOIN EMPLOYEES EB
ON EA.EMPLOYEE_ID = EB.MANAGER_ID;


/*
Indica el DEPARTMENT_NAME y la suma de salarios de ese departamento ordenados 
ascendentemente y que aparezcan también los 
DEPARTMENT_NAME que no tengan empleados. 
*/

SELECT D.DEPARTMENT_NAME,SUM(E.SALARY) FROM 
DEPARTMENTS D
LEFT JOIN EMPLOYEES E
ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
GROUP BY DEPARTMENT_NAME
ORDER BY SUM(E.SALARY) ASC;


/*
Visualizar la ciudad y el nombre del departamento, incluidas aquellas 
ciudades que no tengan departamentos
*/

SELECT LOC.CITY,DEP.DEPARTMENT_NAME FROM LOCATIONS LOC
LEFT JOIN DEPARTMENTS DEP
ON LOC.LOCATION_ID = DEP.LOCATION_ID; 