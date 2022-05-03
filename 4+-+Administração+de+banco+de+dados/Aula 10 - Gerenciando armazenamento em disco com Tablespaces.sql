-- Aula Gerenciando armazenamento em disco com Tablespaces

- CREATE TABLESPACE - Criação de tablespaces
- DROP TABLESPACE - Exclusão de tablespaces sem conteúdo

-- Para você criar nos sistemas do tipo Unix, rode esse comando:

CREATE TABLESPACE secondary LOCATION '/var/lib/postgresql/9.5/';

-- Para no Windows rode:

CREATE TABLESPACE secondary LOCATION 'C:/pgdata95_secondary';

--

CREATE TABLESPACE secondary LOCATION '/var/lib/postgresql/9.5/';


CREATE TABLESPACE secondary LOCATION 'C:/pgdata95_secondary';


ALTER DATABASE meudb_admin SET TABLESPACE secondary;

ALTER TABLE tabela1 SET TABLESPACE secondary;

ALTER TABLESPACE pg_default MOVE ALL TO secondary;
