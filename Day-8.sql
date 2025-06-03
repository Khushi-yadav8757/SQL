8. HAVING Clause – (Group by ke result par filter lagana)
SELECT department, COUNT(*) AS total
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;
--Sirf woh department jisme 5 se zyada employees hain.
