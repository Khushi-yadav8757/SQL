--CREATE VIEW 
CREATE VIEW student_view AS
SELECT name, age, marks
FROM students
WHERE marks > 60;


--RETRIEVE DATA FROM VIEW
SELECT * FROM student_view;


-- UPDATE VIEW 
CREATE OR REPLACE VIEW student_view AS
SELECT name, age
FROM students;


-- DELETE VIEW
DROP VIEW student_view;

