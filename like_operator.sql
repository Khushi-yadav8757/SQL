-- 1. Create a database
CREATE DATABASE SchoolDB;

-- 2. Use the database
USE SchoolDB;

-- 3. Create a table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Grade CHAR(2),
    City VARCHAR(50)
);

-- 4. Insert records
INSERT INTO Students (Name, Grade, City)
VALUES 
('Rohan Sharma', 'A', 'Delhi'),
('Anita Kumari', 'B', 'Mumbai'),
('Rajesh Kumar', 'A', 'Delhi'),
('Kiran Mehta', 'C', 'Kolkata'),
('Anil Kapoor', 'B', 'Delhi');

-- 5. Use LIKE operator to find students whose name starts with 'A'
SELECT * 
FROM Students
WHERE Name LIKE 'A%';

-- 6. Use LIKE to find students who live in cities ending with 'i'
SELECT *
FROM Students
WHERE City LIKE '%i';
