SELECT position, AVG(salary) 
FROM employees 
GROUP BY position
HAVING AVG(salary) > 50000;
