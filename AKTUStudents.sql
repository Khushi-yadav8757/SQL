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
