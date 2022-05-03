-- Aula - Usando Esquemas


\c teste;
CREATE SCHEMA minha_extensão;

CREATE DATABASE taxi_aereo;
\c taxi_aereo;
CREATE SCHEMA Plano; 
CREATE SCHEMA Dados Pessoais; 
CREATE SCHEMA Clientes;

# adduser spadogs
# adduser cuidadoscao
# su - postgres 
$ psql template1
=# CREATE ROLE spadogs WITH PASSWORD '123456';
=# ALTER ROLE spadogs WITH LOGIN;
=# CREATE ROLE cuidadoscao WITH PASSWORD '123456';
=# ALTER ROLE cuidadoscao WITH LOGIN;
=# \q
=# psql

=# CREATE DATABASE spadogs WITH owner = spadogs;
=# CREATE DATABASE cuidadoscao WITH owner = cuidadoscao;
=# \c spadogs;
=# CREATE SCHEMA spadogs;
=# ALTER SCHEMA spadogs OWNER TO spadogs;
=# \q
=# \c cuidadoscao;
=# CREATE SCHEMA cuidadoscao;
=# ALTER SCHEMA cuidadoscao OWNER TO cuidadoscao;

=# ALTER DATABASE cuidadoscao SET search_path='"$user", public, cuidadoscao';


#= select user;













