USE Test_db;

SELECT database();

SHOW TABLES;

# Read

SELECT *
FROM users;

SELECT first_name
FROM users;

SELECT last_name
FROM users;

SELECT first_name, last_name
FROM users;

# Read: with WHERE

SELECT *
FROM users
WHERE last_name = 'doe';

SELECT *
FROM users
WHERE id = 1;

SELECT id FROM users ORDER BY id;

SELECT first_name, last_name FROM users;

SELECT u.first_name, u.last_name, TIMESTAMPDIFF(YEAR, ui.date_of_birth, CURDATE()) AS age
FROM users u
JOIN user_information ui ON u.id = ui.id
WHERE TIMESTAMPDIFF(YEAR, ui.date_of_birth, CURDATE()) >= 33;

SELECT u.id, TIMESTAMPDIFF(YEAR, ui.date_of_birth, CURDATE()) AS age
FROM users u
JOIN user_information ui ON u.id = ui.id
ORDER BY id;

SELECT u.first_name, u.last_name, ui.job_status
FROM users u
JOIN user_information ui ON u.id = ui.id
WHERE job_status = 'unemployed';

# Update
