CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    marks INT
);

INSERT INTO students VALUES
(1, 'Amit', 85),
(2, 'Riya', 92),
(3, 'Sahil', 76),
(4, 'Neha', 88),
(5, 'Raj', 92);
--COUNT() – Total Records Count
SELECT COUNT(*) AS total_students
FROM students;
--SUM() – Sum of Values
SELECT SUM(marks) AS total_marks
FROM students;
--AVG() – Average Value
SELECT AVG(marks) AS average_marks
FROM students;
--MAX() – Maximum Value
SELECT MAX(marks) AS highest_marks
FROM students;
--MIN() – Minimum Value
SELECT MIN(marks) AS lowest_marks
FROM students;
--GROUP BY + Aggregate Function
SELECT marks, COUNT(*) AS no_of_students
FROM students
GROUP BY marks;
--Aggregate Function with WHERE
SELECT AVG(marks) AS avg_high_scorers
FROM students
WHERE marks > 80;



