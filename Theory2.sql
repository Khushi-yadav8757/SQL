🔹 1. Create a Table
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

🔹 2. Insert Data into a Table
INSERT INTO Employees (ID, Name, Age, Department, Salary)
VALUES 
(1, 'Alice', 30, 'HR', 50000.00),
(2, 'Bob', 28, 'IT', 60000.00),
(3, 'Charlie', 35, 'Finance', 70000.00);

🔹 3. Select All Data
SELECT * FROM Employees;

🔹 4. Select Specific Columns
SELECT Name, Salary FROM Employees;

🔹 5. Use WHERE Clause
SELECT * FROM Employees WHERE Age > 30;

🔹 6. Update Data
UPDATE Employees 
SET Salary = 75000.00 
WHERE ID = 3;
🔹 7. Delete Data
DELETE FROM Employees 
WHERE ID = 2;

🔹 8. Aggregate Functions with GROUP BY
SELECT Department, AVG(Salary) AS Avg_Salary
FROM Employees
GROUP BY Department;

🔹 9. Using JOIN
Suppose you have another table:
CREATE TABLE Departments (
    Department VARCHAR(50),
    Manager VARCHAR(100)
);
Now join:
SELECT e.Name, e.Department, d.Manager
FROM Employees e
INNER JOIN Departments d
ON e.Department = d.Department;

🔹 10. Using LIKE Operator
SELECT * FROM Employees 
WHERE Name LIKE 'A%';  -- Names starting with A
