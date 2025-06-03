🔹 3. LIKE Operator – (Pattern matching ke liye)
SELECT * FROM customers
WHERE name LIKE 'A%';  -- A se start
SELECT * FROM customers
WHERE name LIKE '%a';  -- a pe end
SELECT * FROM customers
WHERE name LIKE '%an%';  -- beech me 'an'


🔹 4. IN Operator
SELECT * FROM employees
WHERE department IN ('HR', 'IT');
Sirf HR aur IT dept ke employees.

  
🔹 5. IS NULL / IS NOT NULL
SELECT * FROM employees
WHERE manager_id IS NULL;

🔹 6. DISTINCT – (Duplicate hata ke unique value)
SELECT DISTINCT department FROM employees;

🔹 7. GROUP BY + Aggregation (COUNT, SUM, AVG, MAX, MIN)
✅ Example:

SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;
ya
SELECT department, AVG(salary)
FROM employees
GROUP BY department;
