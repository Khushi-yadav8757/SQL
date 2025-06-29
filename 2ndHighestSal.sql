Q4. Write a query to find the second highest salary from the employees table.
  ans:-
SELECT MAX(salary) 
FROM employees 
WHERE salary < (SELECT MAX(salary) FROM employees);
