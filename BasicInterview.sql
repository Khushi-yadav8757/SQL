--Basic SQL Questions
What is SQL?
SQL (Structured Query Language) is used to manage and manipulate relational databases.

    
Difference between INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN.
INNER JOIN: Returns matching rows from both tables.
LEFT JOIN: Returns all rows from left table + matched rows from right.
RIGHT JOIN: Returns all rows from right table + matched rows from left.
FULL OUTER JOIN: Returns all rows when there is a match in one of the tables.

Difference between WHERE and HAVING.
WHERE filters rows before aggregation.
HAVING filters rows after aggregation (used with GROUP BY).
    
What is a primary key?
Unique identifier for each row in a table; cannot be NULL.

What is a foreign key?
Column in one table that references the primary key of another table.

Difference between UNION and UNION ALL.
UNION: Removes duplicates.
UNION ALL: Keeps duplicates.

Intermediate SQL Questions

Write SQL to find the second highest salary in a table.
SELECT MAX(salary) 
FROM employees 
WHERE salary < (SELECT MAX(salary) FROM employees);

Difference between DELETE, TRUNCATE, and DROP.
DELETE: Removes rows; can use WHERE; logs changes; slower.
TRUNCATE: Removes all rows; cannot use WHERE; faster; resets identity.
DROP: Deletes table structure and data completely.

What are indexes? Why use them?
Indexes improve query performance by allowing faster searches.
Drawback: Slower inserts/updates and extra storage.
    
What are views?
Virtual tables created by a query. Do not store data themselves.
Syntax:
CREATE VIEW view_name AS
SELECT column1, column2
FROM table_name
WHERE condition;

Advanced SQL Questions

Explain window functions. Give an example.
Window functions perform calculations across a set of table rows related to the current row.

SELECT name, salary, RANK() OVER (ORDER BY salary DESC) AS rank
FROM employees;


What is a CTE (Common Table Expression)?

WITH dept_avg AS (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
)
SELECT * FROM dept_avg WHERE avg_salary > 50000;


Self join example:

Used when a table needs to join with itself.

SELECT e1.name AS Employee, e2.name AS Manager
FROM employees e1
JOIN employees e2 ON e1.manager_id = e2.employee_id;


Difference between RANK(), DENSE_RANK(), ROW_NUMBER().

RANK(): Skips ranks if there’s a tie.

DENSE_RANK(): No rank gaps.

ROW_NUMBER(): Always unique sequential numbers.

SQL query optimization tips.

Use indexes on frequently searched columns.

Avoid SELECT *.

Use joins efficiently.

Avoid nested queries if possible.
