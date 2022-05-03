-- Aula Extensões.sql


SELECT name, default_version, installed_version, left(comment,30) As comment FROM pg_available_extensions WHERE installed_version IS NOT NULL ORDER BY name;

SELECT pg_catalog.pg_describe_object(d.classid, d.objid, 0) AS description FROM pg_catalog.pg_depend AS D INNER JOIN pg_catalog.pg_extension AS E ON D.refobjid = E.oid WHERE D.refclassid = 'pg_catalog.pg_extension'::pg_catalog.regclass AND deptype= 'e' AND E.extname = 'plpgsql';


SELECT * FROM pg_available_extensions;

psql -p 5432 -d meubanco_de_dados -c "CREATE EXTENSION fuzzystrmatch;"


CREATE EXTENSION fuzzystrmatch SCHEMA meu_esquema;


-- Links: https://pgxn.org/
