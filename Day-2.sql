| Data Type    | Description               | Example               |
| ------------ | ------------------------- | --------------------- |
| `INT`        | Whole number              | 1, 25, 100            |
| `FLOAT`      | Decimal number            | 3.14, 99.99           |
| `VARCHAR(n)` | Text (up to n characters) | 'Khushi'              |
| `CHAR(n)`    | Fixed-length text         | 'A', 'Yes'            |
| `TEXT`       | Long text                 | 'This is a long note' |
| `DATE`       | Date format (YYYY-MM-DD)  | '2025-05-22'          |
| `TIME`       | Time format (HH\:MM\:SS)  | '14:30:00'            |
| `BOOLEAN`    | True or False             | TRUE or FALSE         |
  *********************************************************************************
  SQL Table Creation
🔹 Syntax:
CREATE TABLE table_name (
  column1 datatype,
  column2 datatype,
  ...
);
***********************************
 Example: Create students table
  CREATE TABLE students (
  id INT,
  name VARCHAR(50),
  age INT,
  email VARCHAR(100),
  admission_date DATE
);
INSERT INTO students(id,name,age,email,admission_date)
VALUES (53,'khushi',21,'khushishresth5@gmail.com','27-09-2023');
SELECT * FROM students;
SELECT name,age FROM students;
