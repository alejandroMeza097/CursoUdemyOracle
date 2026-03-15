--Uso de sentencia where
SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID = 50;

-- Mas operadores : < > = <= >=

--Seleccionar operadores que ganen mas de  5000
SELECT FIRST_NAME,SALARY FROM EMPLOYEES WHERE SALARY > 5000 ORDER BY SALARY DESC;

--Seleccionar empleados que no trabajan en el departamento 50
SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID <> 50 ORDER BY DEPARTMENT_ID;