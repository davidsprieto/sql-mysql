SHOW databases;

DROP DATABASE IF EXISTS Test_db;

SHOW databases;

CREATE DATABASE IF NOT EXISTS Test_db;

SHOW databases;

USE Test_db;

SELECT database();

CREATE TABLE users
(
    id       INT UNSIGNED AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL,
    email    VARCHAR(255) NOT NULL,
    password VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (username),
    UNIQUE (email)
);

SHOW TABLES;

SHOW COLUMNS FROM users;

DESC users;

# DROP TABLE users;

SHOW TABLES;
