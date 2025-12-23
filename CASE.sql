--How to use CASE in SQL?
--Question: Categorize employees as 'High' if salary > 70000, otherwise 'Low'.
--ANSWER:
SELECT Name, Salary,
       CASE 
           WHEN Salary > 70000 THEN 'High'
           ELSE 'Low'
       END AS SalaryCategory
FROM Employees;
