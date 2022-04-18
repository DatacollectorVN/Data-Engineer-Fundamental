-- SRC: https://dev.mysql.com/doc/refman/5.6/en/set-variable.html
-- Global system variable
SET GLOBAL max_connections = 1000;
SET @@GLOBAL.max_connections = 1000;

-- Session (or local) system variable
SET SESSION sql_mode = 'TRADITIONAL';
SET LOCAL sql_mode = 'TRADITIONAL';
SET @@SESSION.sql_mode = 'TRADITIONAL';
SET @@LOCAL.sql_mode = 'TRADITIONAL';
SET @@sql_mode = 'TRADITIONAL';
SET sql_mode = 'TRADITIONAL';