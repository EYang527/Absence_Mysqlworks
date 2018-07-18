-- Drops the animals_db if it exists currently --
DROP DATABASE IF EXISTS favorite_db;
-- Creates the "animals_db" database --
CREATE DATABASE favorite_db;

-- Makes it so all of the following code will affect animals_db --
USE favorite_db;

-- Creates the table "people" within animals_db --
CREATE TABLE favorite_foods (
  -- Makes a string column called "food" which cannot contain null --
  food VARCHAR(50) NOT NULL,
  -- integer score 
  score INTEGER(50)
);

CREATE TABLE favorite_songs (
  -- Makes a string column called "food" which cannot contain null --
  song VARCHAR(100) NOT NULL,
  artist VARCHAR(50) NOT NULL,
  -- integer score 
  
  score INTEGER(50)
);

CREATE TABLE favorite_movies (
  -- Makes a string column called "food" which cannot contain null --
  id INT AUTO_INCREMENT NOT NULL,
  film VARCHAR(50) NOT NULL,
  five_times BOOLEAN,
  -- integer score 
  primary key(id)
);
-- Creates new rows containing data in all named columns --
INSERT INTO favorite_songs (song,artist)
VALUES ("zombies","The Cranberries");

INSERT INTO favorite_foods (food,score)
VALUES ("Pizza",5);

INSERT INTO favorite_movies (id,film,five_times)
VALUES (1,"titanic",false);

select * from favorite_foods;
select * from favorite_movies;
select * from favorite_songs;

