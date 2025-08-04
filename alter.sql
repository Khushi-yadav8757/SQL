-- Create the student_marks table
CREATE TABLE student_marks (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100),
    maths INT,
    science INT,
    english INT
);
-- Add a new column total_marks
ALTER TABLE student_marks
ADD COLUMN total_marks INT;
-- ALTER TABLE student_marks
ADD COLUMN total_marks INT;
