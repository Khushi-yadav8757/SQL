Q10. Write a query to find top 3 highest salaries in the employees table.
ans:-
SELECT DISTINCT salary 
FROM employees 
ORDER BY salary DESC 
LIMIT 3;
