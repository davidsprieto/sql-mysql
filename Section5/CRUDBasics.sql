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

SELECT id
FROM users
ORDER BY id;

SELECT first_name, last_name
FROM users;

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

# Update: Good rule is to SELECT the data first to visualize and confirm that that is the data you want to update.

SELECT *
FROM user_information
WHERE job_field = 'undetermined';

UPDATE user_information
SET job_field = 'unknown'
WHERE job_field = 'undetermined';

SELECT * FROM user_information;


SELECT *
FROM users
WHERE first_name = 'john';

UPDATE users
SET first_name = 'jack', username = 'jackdoe', email = 'jackdoe@test.com'
WHERE first_name = 'john';

SELECT * FROM users;


SELECT *
FROM users
WHERE first_name = 'jane';

UPDATE users
SET last_name = 'smith', username = 'janesmith', email = 'janesmith@test.com'
WHERE first_name = 'jane';

SELECT *
FROM users;

# Delete: Again - Good rule is to SELECT the data first to visualize and confirm that that is the data you want to delete.

DELETE FROM users WHERE first_name = 'jack';

SELECT * FROM users;

SELECT * FROM user_information;


SELECT * FROM user_information WHERE job_status != 'unemployed';

DELETE FROM user_information WHERE job_status != 'unemployed';

SELECT * FROM user_information;
