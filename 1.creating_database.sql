-- SHOW DATABASES;
-- CREATE DATABASE menagerie;
-- USE menagerie;
-- SHOW TABLES;
-- CREATE TABLE pet (
--     name VARCHAR(20),
--     owner VARCHAR(20),
--     species VARCHAR(20),
--     sex VARCHAR(1),
--     birth DATE,
--     death DATE
-- );
-- DESCRIBE pet;
-- INSERT INTO pet (name, owner, species, sex, birth, death)
-- VALUES
--     ('Fluffy', 'John', 'Cat', 'F', '2015-05-13', NULL),
--     ('Buddy', 'Mary', 'Dog', 'M', '2018-07-30', NULL),
--     ('Charlie', 'Steve', 'Bird', 'M', '2020-01-04', NULL),
--     ('Luna', 'Emily', 'Cat', 'F', '2019-03-12', '2023-01-07'),
--     ('Max', 'Sarah', 'Dog', 'M', '2016-02-27', NULL),
--     ('Bella', 'Frank', 'Rabbit', 'F', '2017-08-15', NULL),
--     ('Lucy', 'Katie', 'Fish', 'F', '2021-03-21', NULL),
--     ('Oliver', 'Henry', 'Cat', 'M', '2014-11-11', '2021-05-29'),
--     ('Daisy', 'Lucas', 'Dog', 'F', '2018-09-12', NULL),
--     ('Rocky', 'Sophia', 'Turtle', 'M', '2000-06-05', NULL);

-- UPDATE pet SET birth = '1989-08-31' WHERE name = 'Bowser';

SELECT * FROM pet;