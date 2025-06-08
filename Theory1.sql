🔹 1. What is SQL?
Answer:
SQL (Structured Query Language) is a standard programming language used to manage and manipulate relational databases.

🔹 2. What are the different types of SQL commands?
Answer:
SQL commands are divided into:
DDL (Data Definition Language): CREATE, DROP, ALTER
DML (Data Manipulation Language): INSERT, UPDATE, DELETE
DCL (Data Control Language): GRANT, REVOKE
TCL (Transaction Control Language): COMMIT, ROLLBACK, SAVEPOINT
DQL (Data Query Language): SELECT

🔹 3. What is the difference between WHERE and HAVING?
WHERE Clause	HAVING Clause
Used to filter rows before grouping	Used to filter groups after aggregation
Can be used without GROUP BY	Requires GROUP BY

🔹 4. What is a Primary Key?
Answer:
A primary key is a column (or set of columns) that uniquely identifies each row in a table. It cannot have NULL or duplicate values.

🔹 5. What is a Foreign Key?
Answer:
A foreign key is a column that creates a relationship between two tables. It refers to the primary key of another table.

🔹 6. What is the difference between DELETE, TRUNCATE, and DROP?
Command	Function	Can Rollback?	Removes Table Structure?
DELETE	Deletes specific rows	Yes	No
TRUNCATE	Deletes all rows	No	No
DROP	Deletes entire table	No	Yes

🔹 7. What does the SELECT statement do?
Answer:
SELECT is used to retrieve data from a database.

SELECT * FROM employees;
🔹 8. How do you use the LIKE operator?
Answer:
Used for pattern matching.

SELECT * FROM employees WHERE name LIKE 'A%';
🔹 9. What is the use of GROUP BY?
Answer:
GROUP BY is used to group rows that have the same values and often used with aggregate functions like COUNT(), SUM(), etc.

SELECT department, COUNT(*) FROM employees GROUP BY department;
🔹 10. What are joins in SQL? Name types of joins.
Answer:
Joins are used to combine rows from two or more tables.
Types of joins:

INNER JOIN

LEFT JOIN

RIGHT JOIN

FULL OUTER JOIN

Example:
SELECT a.name, b.salary
FROM employees a
INNER JOIN salaries b ON a.id = b.emp_id;
