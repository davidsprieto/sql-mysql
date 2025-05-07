USE Test_db;

SELECT database();

INSERT INTO users (first_name, last_name, username, email, password)
VALUES ('john', 'doe', 'johndoe', 'johndoe@test.com', 'hashedpassword');

INSERT INTO user_information (id, date_of_birth, ssn, job_status, job_field)
VALUES (LAST_INSERT_ID(), '1991-01-01', '001000000', 'employed', 'information technology');


INSERT INTO users (first_name, last_name, username, email, password)
VALUES ('jane', 'doe', 'janedoe', 'janedoe@test.com', 'hashedpassword');

INSERT INTO user_information (id, date_of_birth, ssn, job_status, job_field)
VALUES (LAST_INSERT_ID(), '1992-02-02', '002000000', 'employed', 'accounting');


INSERT INTO users (first_name, last_name, username, email, password)
VALUES ('jimmy', 'john', 'jimmyjohn', 'jimmyjohn@test.com', 'hashedpassword');

INSERT INTO user_information (id, date_of_birth, ssn)
VALUES (LAST_INSERT_ID(), '1993-03-03', '003000000');


INSERT INTO users (first_name, last_name, username, email, password)
VALUES ('joseph', 'ryan', 'josephryan', 'josephryan@test.com', 'hashedpassword');

INSERT INTO user_information (id, date_of_birth, ssn, job_status, job_field)
VALUES (LAST_INSERT_ID(), '1994-04-04', '004000000', 'employed', 'human resources');

SELECT *
FROM users;

SELECT *
FROM user_information;

# DROP TABLE users;

# DROP TABLE user_information;

SHOW TABLES;
