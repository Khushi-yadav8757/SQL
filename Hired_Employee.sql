--Q.Find employees hired in last 30 days
SELECT *
FROM employees
WHERE hire_date >= CURRENT_DATE - INTERVAL 30 DAY;
