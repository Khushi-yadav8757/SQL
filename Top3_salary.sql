Q.Get top 3 salaries
SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT 3;
