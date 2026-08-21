/*
Visualizar los siguientes datos con CASE.
o Si el departamento es 50 ponemos Transporte
o Si el departamento es 90 ponemos Dirección
o Cualquier otro número ponemos “Otro departamento”
*/

SELECT DEPARTMENT_ID,FIRST_NAME,
CASE DEPARTMENT_ID
    WHEN 50 THEN 'TRANSPORTE'
    WHEN 90 THEN 'DIRECCION'
    ELSE 'OTRO DEPARTAMENTO'
END
FROM EMPLOYEES;



/*
Mostrar de la tabla LOCATIONS, la ciudad y el país. Ponemos los
siguientes datos dependiendo de COUNTRY_ID.
o Si es US y CA ponemos América del Norte
o Si es CH, UK, DE,IT ponemos Europa
o Si es BR ponemos América del Sur
o Si no es ninguno ponemos ‘Otra zona’
*/

SELECT COUNTRY_ID,CITY,
    CASE WHEN COUNTRY_ID IN ('US', 'CA') THEN 'AMERICA DEL NORTE'
        WHEN COUNTRY_ID IN ('CH','UK','DE','IT') THEN 'EUROPA'
        WHEN COUNTRY_ID IN ('BR') THEN 'AMERICA DEL SUR'
        ELSE 'OTRA ZONA'
    END
FROM LOCATIONS;

--Realizar el primer ejercicio con DECODE en vez de con CASE

SELECT DEPARTMENT_ID,FIRST_NAME,DECODE(DEPARTMENT_ID,50,'TRANSPORTE',90,'DIRECCION','OTRO DEPARTAMENTO')
FROM EMPLOYEES;
