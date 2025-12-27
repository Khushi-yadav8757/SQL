Q. Find Nth highest salary (generic)
SELECT salary
FROM employees e1
WHERE N-1 = (
    SELECT COUNT(DISTINCT salary)
    FROM employees e2
    WHERE e2.salary > e1.salary
);
