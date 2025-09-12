What is a subquery?
Question: Find employees whose salary is greater than the average salary.
Answer:
SELECT Name, Salary
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);
