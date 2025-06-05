SHOW databases;

DROP DATABASE IF EXISTS Shirts_db;

CREATE DATABASE IF NOT EXISTS Shirts_db;

SHOW databases;

USE Shirts_db;

SELECT database();

CREATE TABLE shirts
(
    id        INT UNSIGNED AUTO_INCREMENT,
    article   VARCHAR(25) NOT NULL,
    color     VARCHAR(25) NOT NULL,
    size      VARCHAR(25) NOT NULL,
    last_worn INT         NOT NULL,
    PRIMARY KEY (id)
);

SHOW tables;

SHOW COLUMNS from shirts;

DESC shirts;

INSERT into shirts (article, color, size, last_worn)
VALUES ('t-shirt', 'white', 'S', 10),
       ('t-shirt', 'green', 'S', 200),
       ('polo shirt', 'black', 'M', 10),
       ('tank top', 'blue', 'S', 50),
       ('t-shirt', 'pink', 'S', 0),
       ('polo shirt', 'red', 'M', 5),
       ('tank top', 'white', 'S', 200),
       ('tank top', 'blue', 'M', 15);

# Task: Insert a new shirt

INSERT into shirts (article, color, size, last_worn)
    VALUE ('polo shirt', 'purple', 'M', 50);

# Task: Select only article and color from shirts

SELECT article, color
FROM shirts;

# Task: Select only medium shirts displaying everything except the ID

SELECT article, color, size, last_worn
FROM shirts
WHERE size = 'M';

# Task: Update all polo shirt size to large (L):

SELECT article, size
FROM shirts
WHERE article = 'polo shirt';

UPDATE shirts
SET size = 'L'
WHERE article = 'polo shirt';

SELECT article, size
FROM shirts
WHERE article = 'polo shirt';

# Task: Update the shirt last worn 15 days ago to 0 (change last_worn from 15 to 0):

SELECT *
FROM shirts
WHERE last_worn = 15;

UPDATE shirts
SET last_worn = 0
WHERE last_worn = 15;

SELECT *
FROM shirts
WHERE last_worn = 0;

# Task: Update all white shirts size to 'XS' and color to 'off-white'

SELECT *
FROM shirts
WHERE color = 'white';

UPDATE shirts
SET size  = 'XS',
    color = 'off-white'
WHERE color = 'white';

SELECT *
FROM shirts
WHERE color = 'off-white';

# Task: Delete last worn shirts greater than 200 days

SELECT *
FROM shirts
where last_worn >= 200;

DELETE
FROM shirts
WHERE last_worn >= 200;

SELECT *
FROM shirts;

# Task: Delete all tank tops

SELECT *
FROM shirts
WHERE article = 'tank top';

DELETE
FROM shirts
WHERE article = 'tank top';

SELECT * FROM shirts;

# Task: Delete all shirts

SELECT * FROM shirts;

DELETE FROM shirts;

SELECT * FROM shirts;

# Task: Drop shirts table

DROP table shirts;

