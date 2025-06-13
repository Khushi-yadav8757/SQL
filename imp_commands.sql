1. `SELECT` – Retrieve data from a table
  
SELECT * FROM employees;
Returns all rows and columns from the `employees` table.

-----------------------------------------------------------
 2. `WHERE` – Filter records based on conditions.

SELECT name, salary FROM employees
WHERE salary > 50000;

Displays name and salary of employees with salary greater than 50,000.

--------------------------------------------------------------------------------------

 3. `ORDER BY` – Sort results
  
SELECT name, salary FROM employees
ORDER BY salary DESC;

Lists employees in descending order of salary.

--------------------------------------------------------------

4. `GROUP BY` – Group rows that have the same values

SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

Displays department-wise employee count.

-----------------------------------------------------------

 5. `HAVING` – Filter after grouping
  
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;

Shows departments where average salary > 60,000.

---------------------------------------------------------

6. `INSERT INTO` – Add new data

INSERT INTO employees (emp_id, name, salary)
VALUES (101, 'Khushi', 55000);

Adds a new employee named Khushi with salary 55,000 to the table.

-------------------------------------------------------------------------

7. `UPDATE` – Modify existing data

UPDATE employees
SET salary = 60000
WHERE emp_id = 101;

Updates salary to 60,000 for employee with ID 101.

-------------------------------------------------------------------

8. `DELETE` – Remove data
  
DELETE FROM employees
WHERE emp_id = 101;

Deletes the employee with ID 101 from the table.

--------------------------------------------------------------------

9. `CREATE TABLE` – Create a new table

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2)
);

Creates an `employees` table with 3 columns: ID, name, and salary.

-------------------------------------------------------------------------------

10. `ALTER TABLE` – Modify a table
  
ALTER TABLE employees
ADD department VARCHAR(50);

Adds a new column `department` to the `employees` table.

-----------------------------------------------------------------
11. `DROP TABLE` – Delete a table

DROP TABLE employees;

Completely deletes the `employees` table and its data.

---------------------------------------------------------------------

 12.`DISTINCT` – Remove duplicates

SELECT DISTINCT department FROM employees;

Returns a list of **unique department names**.

-------------------------------------------------------------------------

13. `BETWEEN` – Range condition

SELECT * FROM employees
WHERE salary BETWEEN 40000 AND 70000;

Displays employees whose salary is between 40k and 70k.

------------------------------------------------------------------

14. `LIKE` – Pattern matching

SELECT name FROM employees
WHERE name LIKE 'A%';

Returns names that **start with A**.

------------------------------------------------------------
15. `IN` – Multiple possible values


SELECT name FROM employees
WHERE department IN ('HR', 'IT', 'Finance');

Displays employees in **HR, IT, or Finance** departments.
...
