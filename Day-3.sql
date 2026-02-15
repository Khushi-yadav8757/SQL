The SELECT statement is used to select data from a database.
 Syntax:
SELECT column1, column2, ...
FROM table_name;
example
SELECT name, age FROM students;
*********************
Select all column
SELECT * FROM students;
*****************************************************************************
🔹 1. WHERE Clause – Filter data based on condition
✅ Syntax:
sql
Copy
Edit
SELECT column_names
FROM table_name
WHERE condition;
example:
SELECT * FROM students
WHERE age > 20;
*************************************************************
🔹 2. UPDATE Command – Change existing data
✅ Syntax:
sql
Copy
Edit
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;
✅ Example:
sql
Copy
Edit
UPDATE students
SET email = 'newemail@gmail.com'
WHERE id = 53;
