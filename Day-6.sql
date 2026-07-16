🔹 1. LIMIT / TOP / ROWNUM – (Record limit set karna)
✅ Use:
Records ki sankhya ko limit karna jo query return karegi.

✅ MySQL / PostgreSQL:
SELECT * FROM students
ORDER BY marks DESC
LIMIT 5;
Yeh top 5 students ko dikhata hai highest marks ke saath.
  
✅ SQL Server:
SELECT TOP 5 * FROM students
ORDER BY marks DESC;

✅ Oracle:
SELECT * FROM students
WHERE ROWNUM <= 5;
🔹 2. WHERE Clause ke saath Operators
=, !=, >, <, >=, <=

BETWEEN, IN, LIKE, IS NULL

✅ Example:
SELECT * FROM employees
WHERE salary BETWEEN 30000 AND 50000;
Jo employees 30k se 50k salary lete hain.
