-- create database 
CREATE DATABASE practice_db;
USE practice_db;

-- create table 
CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  city VARCHAR(50)
);

-- insert data
INSERT INTO students VALUES (1, 'Ali', 20, 'Karachi');
INSERT INTO students VALUES (2, 'Sara', 22, 'Lahore');

-- view data
SELECT * FROM students;
