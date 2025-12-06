-- Create courses table first

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    duration_months INT,
    fees NUMERIC(10,2)
);
--  Create students table linked with courses

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    age INT,
    city VARCHAR(50),
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- 
Insert 5 courses

INSERT INTO courses (course_name, duration_months, fees) VALUES
('Data Science', 6, 25000.00),
('Web Development', 4, 18000.00),
('Digital Marketing', 3, 15000.00),
('Graphic Design', 5, 20000.00),
('Cyber Security', 6, 30000.00);

--Insert 5 students (linked to courses by course_id )
INSERT INTO students (student_name, age, city, course_id) VALUES
('Amit Sharma', 20, 'Delhi', 1),  -- Data Science
('Priya Verma', 22, 'Mumbai', 2), -- Web Development
('Rahul Singh', 21, 'Kolkata', 3), -- Digital Marketing
('Neha Gupta', 23, 'Chennai', 4),  -- Graphic Design
('Vikas Kumar', 20, 'Pune', 5);    -- Cyber Security

-- View joined data

SELECT s.student_id, s.student_name, s.age, s.city, 
       c.course_name, c.duration_months, c.fees
FROM students s
JOIN courses c ON s.course_id = c.course_id;

--Output 

| student\_id | student\_name | age | city    | course\_name      | duration\_months | fees     |
| ----------- | ------------- | --- | ------- | ----------------- | ---------------- | -------- |
| 1           | Amit Sharma   | 20  | Delhi   | Data Science      | 6                | 25000.00 |
| 2           | Priya Verma   | 22  | Mumbai  | Web Development   | 4                | 18000.00 |
| 3           | Rahul Singh   | 21  | Kolkata | Digital Marketing | 3                | 15000.00 |
| 4           | Neha Gupta    | 23  | Chennai | Graphic Design    | 5                | 20000.00 |
| 5           | Vikas Kumar   | 20  | Pune    | Cyber Security    | 6                | 30000.00 |

