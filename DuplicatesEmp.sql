-- Q5. Write a query to find duplicate employee names.
ans:-
SELECT name, COUNT(*) 
FROM employees 
GROUP BY name 
HAVING COUNT(*) > 1;


