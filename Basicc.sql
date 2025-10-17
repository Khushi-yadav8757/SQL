-- IN
SELECT * FROM employees WHERE position IN ('Manager', 'Developer');
----------------------------------------------------------------
-- LIKE
SELECT * FROM employees WHERE name LIKE 'J%';
-----------------------------------------------------------------
-- IS NULL
SELECT * FROM employees WHERE salary IS NULL;
-----------------------------------------------------------------
-- UPDATE
UPDATE employees SET salary = 65000 WHERE id = 1;
----------------------------------------------------------------
--DELETE
DELETE FROM employees WHERE id = 1;
---------------------------------------------------------------------
--Aggregate functions
SELECT COUNT(*), AVG(salary), MAX(salary), MIN(salary) FROM employees;
--------------------------------------------------------------------
--GROUP BY
SELECT position, AVG(salary) 
FROM employees 
GROUP BY position;
-------------------------------------------------------------------------

