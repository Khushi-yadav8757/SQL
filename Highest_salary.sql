Q.Get highest salary in each department
SELECT department, MAX(salary)
FROM employees
GROUP BY department;
