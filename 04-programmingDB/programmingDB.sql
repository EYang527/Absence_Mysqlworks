-- Drops the animals_db if it exists currently --
DROP DATABASE IF EXISTS programming_db;
-- Creates the "animals_db" database --
CREATE DATABASE programming_db;

-- Makes it so all of the following code will affect animals_db --
USE programming_db;

-- Creates the table "people" within animals_db --
CREATE TABLE programming_languages(
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
  id INTEGER AUTO_INCREMENT NOT NULL,
  -- Makes a string column called "name" which cannot contain null --
  languages VARCHAR(30) NOT NULL,

  rating decimal(4,2) not null,
  -- Sets id as this table's primary key which means all data contained within it will be unique --
  PRIMARY KEY (id)
);



-- -- Creates new rows for programming languages
INSERT INTO programming_languages (languages,rating)
VALUES ("C#",4.0);

INSERT INTO programming_languages (languages,rating)
VALUES ("java",5.0);

INSERT INTO programming_languages (languages,rating)
VALUES ("javascript",4.3);

INSERT INTO programming_languages (languages,rating)
VALUES ("html",2.0);

-- add a column mastered
ALTER TABLE programming_languages
ADD masterd boolean;
