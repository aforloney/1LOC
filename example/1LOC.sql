-- EXMAPLE DB STRUCTURE
-- can be invoked via, path/to/mysql --user=root --verbose < path/to/sql
--  	(assuming WAMP is installed -- ie, C:\wamp\bin\mysql\mysql5.5.24\bin\mysql --user=root --verbose < %CD%\1LOC.sql)
-- drop/create the database

DROP DATABASE IF EXISTS oloc;
CREATE DATABASE oloc;

-- switch to database

USE oloc;

-- need a table to store user registration

CREATE TABLE users (id INT AUTO_INCREMENT NOT NULL,
					username VARCHAR(30) NOT NULL,
					password VARCHAR(32) NOT NULL,
					preferred_language VARCHAR(30),
					PRIMARY KEY (id));
					
-- INSERT INTO users VALUES (DEFAULT, 'LkBurn', MD5('roflcopter'), 'Python');
-- INSERT INTO users VALUES (DEFAULT, 'aforloney', MD5('qwerty123'), 'MagicFS');


-- need a table to stop lines of code

CREATE TABLE program (language VARCHAR(30) NOT NULL,
					  line_no INT AUTO_INCREMENT NOT NULL,
					  username VARCHAR(30) NOT NULL,
					  source TEXT(175) NOT NULL, 
					  PRIMARY KEY (line_no));
					  
-- INSERT INTO program VALUES ('Java', DEFAULT, 'aforloney', 'int i = "4";');
-- INSERT INTO program VALUES ('Java', DEFAULT, 'LkBurn', 'System.exit(0)');

-- need an table of source language and comment delimiter

CREATE TABLE source_comment_delim (language VARCHAR(30) NOT NULL,
								   delimiter CHAR(2) NOT NULL);
								   
INSERT INTO source_comment_delim VALUES ('Java','//');