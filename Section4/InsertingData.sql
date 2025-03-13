USE Test_db;

SELECT database();

INSERT INTO users (username, email, password)
VALUES ('johndoe', 'johndoe@test.com', 'Xbcc456igFV'),
       ('janedoe', 'janedoe@test.com', 'NjualdMNd4098');

SELECT *
FROM users;

CREATE TABLE people
(
    id         INT UNSIGNED AUTO_INCREMENT,
    first_name VARCHAR(20)  NOT NULL,
    last_name  VARCHAR(20)  NOT NULL,
    age        INT UNSIGNED NOT NULL,
    PRIMARY KEY (id)
);

DESC people;

INSERT INTO people (first_name, last_name, age)
VALUES ('Linda', 'Belcher', 45),
       ('Phillip', 'Frond', 38),
       ('Calvin', 'Fischer', 70);

SELECT *
FROM people;

DROP TABLE people;

CREATE TABLE employees
(
    id INT UNSIGNED AUTO_INCREMENT,
    last_name VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    age INT UNSIGNED NOT NULL,
    current_status VARCHAR(100) NOT NULL DEFAULT 'employed',
    PRIMARY KEY (id)
);

DESC employees;

DROP TABLE employees;

SHOW TABLES;
