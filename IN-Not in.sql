What is IN and NOT IN?
  
Ques: Get employees from department 1, 2, or 3.
  
Answer:
SELECT * 
FROM Employees
WHERE DepartmentID IN (1,2,3);
Question: Get employees not in department 1.

SELECT * 
FROM Employees
WHERE DepartmentID NOT IN (1);
