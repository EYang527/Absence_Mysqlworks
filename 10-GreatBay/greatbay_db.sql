DROP DATABASE IF EXISTS ice_creamDB;

CREATE DATABASE greatBayDB;

USE greatBayDB;

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  product VARCHAR(45) NULL,
  current_bid DECIMAL(10,2) NULL,
  
  
  PRIMARY KEY (id)
);

INSERT INTO products (product, price)
VALUES ("iphone 6s", 100);

