Q9. Write a query to display average salary for each department
ans:-
SELECT department_id, AVG(salary) AS avg_salary 
FROM employees 
GROUP BY department_id;
