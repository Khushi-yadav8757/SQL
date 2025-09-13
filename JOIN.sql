JOIN with Aggregates

Example: Total salary by department.

SELECT d.dept_name, SUM(e.salary) AS total_salary
FROM Department d
JOIN Employee e 
  ON d.dept_id = e.dept_id
GROUP BY d.dept_name;
