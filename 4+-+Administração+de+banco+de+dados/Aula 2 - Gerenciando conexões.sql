-- Aula - Gerenciando conexões


SELECT * FROM pg_stat_activity;

SELECT pg_cancel_backend(pid);

SELECT pg_terminate_backend(pid);

SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE usename = 'algum_role';
