Problem 1: Employees and Their Managers


Employee(emp_id, name, manager_id)

Find each employee’s name along with their manager’s name.

SELECT e.name AS Employee, m.name AS Manager
FROM Employee e
LEFT JOIN Employee m
  ON e.manager_id = m.emp_id;
