What is IN and NOT IN?

Question: Get employees from department 1, 2, or 3.
Answer:
SELECT * 
FROM Employees
WHERE DepartmentID IN (1,2,3);
