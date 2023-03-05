--Creating Database:
CREATE DATABASE mydatabase6;
USE mydatabase6;
--Creating Tables and insert
CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  salary FLOAT
);
select *from employees;
INSERT INTO employees VALUES (1, 'Alice', 25, 5000), (2, 'Bob', 30, 8000), (3, 'Charlie', 35, 6500);
--Count Function:
SELECT COUNT(*) FROM employees;
SELECT COUNT(age) FROM employees WHERE salary > 6000;
--Max Function:
SELECT MAX(salary) FROM employees;
SELECT MAX(age) FROM employees WHERE salary > 6000;
--Min Function:
SELECT MIN(salary) FROM employees;
SELECT MIN(age) FROM employees WHERE salary > 6000;
--Avg Function:
SELECT AVG(salary) FROM employees;
SELECT AVG(age) FROM employees WHERE salary > 6000;



