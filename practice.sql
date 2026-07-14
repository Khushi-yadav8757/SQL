--Find employees whose salary is greater than 50,000
SELECT *
FROM Employee
WHERE salary > 50000;

--Find employees whose name starts with 'A'
SELECT *
FROM Employee
WHERE name LIKE 'A%';

--Find the second highest salary
SELECT MAX(salary) AS second_highest_salary
FROM Employee
WHERE salary < (
    SELECT MAX(salary)
    FROM Employee
);

-- Count total employees
SELECT COUNT(*) AS total_employees
FROM Employee;

--Find average salary
SELECT AVG(salary) AS average_salary
FROM Employee;

--Find highest salary
SELECT MAX(salary) AS highest_salary
FROM Employee;

--Find department-wise average salary
SELECT department,
       AVG(salary) AS avg_salary
FROM Employee
GROUP BY department;

--Find duplicate emails
SELECT email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1;

--Find customers who never placed an order
SELECT c.name
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.customerId IS NULL;

--Employees earning more than their manager
SELECT e.name
FROM Employee e
JOIN Employee m
ON e.managerId = m.id
WHERE e.salary > m.salary;

--Top 3 highest salaries
SELECT *
FROM Employee
ORDER BY salary DESC
LIMIT 3;

--Rank employees by salary
SELECT name,
       salary,
       DENSE_RANK() OVER(ORDER BY salary DESC) AS salary_rank
FROM Employee;

--Running total of sales
SELECT date,
       amount,
       SUM(amount) OVER(ORDER BY date) AS running_total
FROM Sales;
