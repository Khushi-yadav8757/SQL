--How to use LIKE for pattern matching?
--Question: Get all employee names starting with 'J'.
Answer:
SELECT Name
FROM Employees
WHERE Name LIKE 'J%';
