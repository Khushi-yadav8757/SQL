Q.Find total salary paid per department
SELECT department, SUM(salary)
FROM employees
GROUP BY department;
