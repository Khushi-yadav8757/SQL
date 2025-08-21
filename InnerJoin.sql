Q6. Write a query using INNER JOIN to display employee name and their department name.
ans:-
SELECT e.name, d.department_name 
FROM employees e 
INNER JOIN departments d 
ON e.department_id = d.id;

