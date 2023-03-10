CREATE DATABASE pet_adoption;

USE pet_adoption;

CREATE TABLE Animals
(
id INT NOT NULL,
name varchar(50),
breed varchar(50),
color varchar(50),
gender varchar(50),
status INT
);

CREATE TABLE Adoptions
(
id INT NOT NULL,
name varchar(50),
contact varchar(50),
date datetime,
);

SELECT * 
FROM Animals

INSERT INTO Animals
(
id,
name,
breed,
color,
gender,
status
) VALUES(84254,'sparki', 'Akita', 'green', 'female', 0);

SELECT * FROM Animals

SELECT name 
FROM Animals
WHERE gender = 'female'

SELECT id 
FROM Animals
WHERE status = 0;