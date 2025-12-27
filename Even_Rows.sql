Q.Fetch only even rows
SELECT *
FROM employees
WHERE MOD(id, 2) = 0;
