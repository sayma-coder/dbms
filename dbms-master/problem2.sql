-- Create a new database named "database2"
CREATE DATABASE database2;
USE database2;

-- CREATE Command: Creating a new table named "students" with columns "id," "name," "age," and "gender."
CREATE TABLE students (
id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age INT,
gender CHAR(1)
);

select  *from students;
-- ALTER Command: Adding a new column "email" to the "students" table.

ALTER TABLE students
	ADD email VARCHAR(50);

select  *from students;
-- DROP Command: Deleting the "students" table.

DROP TABLE students;
select  *from students;
-- DROP Command: Deleting the "database2" database.

DROP DATABASE database2;
