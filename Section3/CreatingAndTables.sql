SHOW databases;

DROP DATABASE IF EXISTS Test_db;

SHOW databases;

CREATE DATABASE IF NOT EXISTS Test_db;

SHOW databases;

USE Test_db;

SELECT database();

CREATE TABLE users
(
    id         INT UNSIGNED AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name  VARCHAR(100) NOT NULL,
    username   VARCHAR(100) NOT NULL,
    email      VARCHAR(255) NOT NULL,
    password   VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (username),
    UNIQUE (email)
);

CREATE TABLE user_information
(
    id            INT UNSIGNED NOT NULL,
    date_of_birth DATE         NOT NULL,
    ssn           CHAR(9)      NOT NULL,
    job_status    VARCHAR(100) NOT NULL DEFAULT 'unemployed',
    job_field     VARCHAR(100) NOT NULL DEFAULT 'undetermined',
    PRIMARY KEY (id),
    FOREIGN KEY (id) REFERENCES users (id) ON DELETE CASCADE,
    UNIQUE (ssn)
);

SHOW TABLES;

SHOW COLUMNS FROM users;

DESC users;

SHOW COLUMNS FROM user_information;

DESC user_information;

# DROP TABLE users;

# DROP TABLE user_information;

SHOW TABLES;
