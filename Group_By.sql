#Average salary

SELECT position, AVG(salary) AS avg_salary
FROM employees
GROUP BY position;
