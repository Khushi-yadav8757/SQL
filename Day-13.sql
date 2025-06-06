✅ 1. LIMIT Clause
Purpose: Number of rows limit karne ke liye.
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 5;
🔸 Top 5 highest salary employees show karega.
------------------------------------------------------
✅ 2. IN Clause
Purpose: Multiple values ke against filter.
SELECT * FROM students
WHERE class IN (10, 11, 12);
🔸 10th, 11th, aur 12th class ke students dikhega.
------------------------------------------------------
✅ 3. BETWEEN Clause
Purpose: Range ke beech values filter.
SELECT * FROM products
WHERE price BETWEEN 100 AND 500;
-----------------------------------------------------------
✅ 4. LIKE Operator
Purpose: Pattern search karne ke liye.
SELECT * FROM customers
WHERE name LIKE 'A%';
🔸 A se start hone wale names dikhayega.
| Pattern | Meaning             |
| ------- | ------------------- |
| `A%`    | Starts with A       |
| `%A`    | Ends with A         |
| `%A%`   | Contains A anywhere |
| `_A%`   | Second letter is A  |
------------------------------------------------
✅ 5. IS NULL / IS NOT NULL
Purpose: NULL value check karne ke liye.
SELECT * FROM orders
WHERE delivery_date IS NULL;
🔸 Jinki delivery date abhi set nahi hui hai.
-------------------------------------------------
✅ 6. ALIAS (AS)
Purpose: Column ya table ka temporary name dena.
SELECT name AS customer_name, city AS location
FROM customers;
----------------------------------
✅ 7. DISTINCT Keyword
Purpose: Duplicate values hatane ke liye.
SELECT DISTINCT city FROM customers;
🔸 Unique cities show karega.
------------------------------------------------
✅ 8. AGGREGATE FUNCTIONS
| Function  | Description           |
| --------- | --------------------- |
| `COUNT()` | Number of rows        |
| `SUM()`   | Total sum of a column |
| `AVG()`   | Average value         |
| `MIN()`   | Minimum value         |
| `MAX()`   | Maximum value         |

SELECT COUNT(*) FROM employees;
SELECT AVG(salary) FROM employees;
