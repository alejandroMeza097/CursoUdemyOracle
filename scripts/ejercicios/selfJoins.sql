--self joins : union dentro de la propia tabla, sucede cuando una columna es fk de otra columna
-- dentro de las misma tabla

SELECT TRABAJADOR.FIRST_NAME, JEFE.FIRST_NAME FROM EMPLOYEES TRABAJADOR
JOIN EMPLOYEES JEFE
ON TRABAJADOR.MANAGER_ID = JEFE.EMPLOYEE_ID;