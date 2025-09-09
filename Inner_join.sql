-- Employees Table
CREATE TABLE Employees (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary NUMERIC(10,2)
);

-- Departments Table
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

-- Projects Table
CREATE TABLE Projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(50),
    dept_id INT
);
-- Insert into Employees
INSERT INTO Employees (emp_name, dept_id, salary) VALUES
('Alice', 101, 60000),
('Bob', 102, 55000),
('Charlie', 103, 70000),
('David', 101, 50000),
('Eva', NULL, 45000);

-- Insert into Departments
INSERT INTO Departments VALUES
(101, 'HR', 'New York'),
(102, 'Finance', 'Chicago'),
(103, 'IT', 'San Francisco'),
(104, 'Marketing', 'Boston');

-- Insert into Projects
INSERT INTO Projects (project_name, dept_id) VALUES
('Recruitment System', 101),
('Payroll App', 102),
('E-commerce Platform', 103),
('Ad Campaign', 104);
SELECT e.emp_id, e.emp_name, p.project_name
FROM Employees e
INNER JOIN Departments d ON e.dept_id = d.dept_id
INNER JOIN Projects p ON d.dept_id = p.dept_id;



