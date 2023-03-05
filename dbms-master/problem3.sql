-- Create a new table named "students" with columns "id," "name," "age," and "gender."
create database database3;
use database3;
CREATE TABLE database3 (
	id INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	age INT,
	gender CHAR(1)
);

-- Insert sample data into the "students" table.

INSERT INTO database3(id, name, age, gender)
VALUES (1, 'John', 20, 'M'),(2, 'Jane', 21, 'F'),(3, 'Mike', 19, 'M'),(4, 'Lisa', 22, 'F'),(5, 'David', 23, 'M');

-- SELECT Clause: Selecting all data from the "students" table.
SELECT *FROM database3;

-- FROM Clause: Selecting data only from the "students" table.

SELECT id, name, age
	FROM database3;

-- WHERE Clause: Selecting data only for female students from the "students" table.

SELECT *FROM database3
	WHERE gender = 'F';

-- Dropping the "students" table.
DROP TABLE database3;