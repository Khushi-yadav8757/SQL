Q3. Write a query to count number of employees in each department.
ans:-
SELECT department_id, COUNT(*) AS employee_count 
FROM employees 
GROUP BY department_id;
