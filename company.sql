CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
	position VARCHAR(50),
	department VARCHAR(50),
	hire_date DATE,
	salary NUMERIC (10,2)
);

SELECT * FROM employee;

INSERT INTO employee (id, name, position, department, hire_date, salary)
VALUES 
(101, 'Amit Sharma', 'Software Engineer', 'IT', '2023-05-10', 65000.00),
(102, 'Neha Verma', 'HR Manager', 'HR', '2022-03-15', 72000.00),
(103, 'Ravi Kumar', 'Accountant', 'Finance', '2021-11-01', 48000.50);

DELETE FROM employee
WHERE id=103;

ALTER TABLE employee
DROP COLUMN salary;

DROP TABLE IF EXISTS employee;


