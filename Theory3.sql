1. What is SQL?
    SQL (Structured Query Language) is used to communicate with databases. 
    It is the standard language for relational database management systems 
    like MySQL, PostgreSQL, Oracle, SQL Server, etc..
2. What is the difference between `WHERE` and `HAVING` clause?

Answer:

`WHERE` is used to filter rows **before** grouping.
 `HAVING` is used to filter groups **after** `GROUP BY`.
Example:
  
-- Using WHERE
SELECT * FROM employees
WHERE department = 'Sales';

-- Using HAVING
SELECT department, COUNT(*) as emp_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;
-----------------------------------------------------------------------------------------
3.What is the difference between `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN` and `FULL JOIN`?

| JOIN Type  | Description                                                                  |
| ---------- | ---------------------------------------------------------------------------- |
| INNER JOIN | Returns records with matching values in both tables.                         |
| LEFT JOIN  | Returns all records from the left table and matching records from the right. |
| RIGHT JOIN | Returns all records from the right table and matching records from the left. |
| FULL JOIN  | Returns all records when there is a match in either left or right table.     |

Example:
-- INNER JOIN example
SELECT e.name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;


-------------------------------------------------------------------------------------------
 4. Write a query to fetch the second highest salary.

SELECT MAX(salary) AS Second_Highest
FROM employees
WHERE salary < (
    SELECT MAX(salary) FROM employees
);

-------------------------------------------------------------------------------------------
5.What is the difference between `DELETE`, `TRUNCATE`, and `DROP`?

| Command  | Description                                                              |
| -------- | ------------------------------------------------------------------------ |
| DELETE   | Removes specific rows; can use `WHERE`. Logs transactions.               |
| TRUNCATE | Removes all rows; faster than DELETE. Cannot be rolled back in some DBs. |
| DROP     | Deletes the entire table structure and data.                             |

Example:
DELETE FROM employees WHERE emp_id = 1;
TRUNCATE TABLE employees;
DROP TABLE employees;
```

--------------------------------------------------------------------------------

6.What is a Primary Key and Foreign Key?
 Primary Key: Uniquely identifies each record in a table. Cannot have NULLs.
 Foreign Key: Refers to the Primary Key in another table, used to maintain referential integrity.

-- Primary Key
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Foreign Key
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
-----------------------------------------------------------------------
7.Write a query to find duplicate records in a table.

SELECT name, COUNT(*)
FROM employees
GROUP BY name
HAVING COUNT(*) > 1;

---------------------------------------------------------------------
8.How to fetch only the first 5 records from a table?

-- MySQL
SELECT * FROM employees LIMIT 5;

-- SQL Server
SELECT TOP 5 * FROM employees;
-------------------------------------------------------------
 9.What is a subquery? Give an example.
A subquery is a query within another SQL query.

Example:
  
SELECT name
FROM employees
WHERE salary > (
    SELECT AVG(salary) FROM employees
);
----------------------------------------------
10.What is normalization? What are different normal forms?
  
Normalization is the process of organizing data to reduce redundancy.
Normal Forms:

 1NF: Atomic values
 2NF: No partial dependency
 3NF: No transitive dependency

