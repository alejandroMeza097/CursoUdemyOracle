/*
De la tabla LOCATIONS visualizar el nombre de la ciudad y el estado-
provincia. En el caso de que no tenga que aparezca el texto “No tiene”
*/
SELECT * FROM LOCATIONS;
SELECT CITY, NVL(STATE_PROVINCE,'NO TIENE') AS "STATE PROVINCE" FROM LOCATIONS;



/*
Visualizar el salario de los empleados incrementado en la comisión
(PCT_COMMISSION). Si no tiene comisión solo debe salir el salario
*/
SELECT * FROM EMPLOYEES;
SELECT SALARY,COMMISSION_PCT,NVL2(COMMISSION_PCT,SALARY + SALARY * (COMMISSION_PCT/100),SALARY) AS "SALARY + COMMISSION" FROM EMPLOYEES;



/*
Seleccionar el nombre del departamento y el manager_id. Si no tiene,
debe salir un -1
*/
SELECT * FROM DEPARTMENTS;
SELECT DEPARTMENT_NAME, NVL(MANAGER_ID,-1) FROM DEPARTMENTS;




/*
De la tabla LOCATIONS, devolver NULL si la ciudad y la provincia son
iguales. Si no son iguales devolver la CITY.
*/

SELECT * FROM LOCATIONS;
SELECT CITY,STATE_PROVINCE,NVL2(NULLIF(CITY,STATE_PROVINCE),CITY,NULL) FROM LOCATIONS; 