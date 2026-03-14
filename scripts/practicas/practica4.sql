/*
Visualizar las ciudades donde hay departamentos, de la tabla locations. No
deben salir repetidos
*/
SELECT COUNT (DISTINCT CITY) FROM LOCATIONS; --23 CIUDADES
SELECT  DISTINCT CITY FROM LOCATIONS;



/*
Visualizar los distintos tipos de JOB_ID por departamento de la tabla
Employees
*/
SELECT DISTINCT JOB_ID FROM EMPLOYEES;
SELECT COUNT(DISTINCT JOB_ID) FROM EMPLOYEES;