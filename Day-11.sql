Table 1: Customers

| CustomerID | CustomerName |
| ---------- | ------------ |
| 1          | Alice        |
| 2          | Bob          |
| 3          | Charlie      |
 Table 2: Orders
 | OrderID | CustomerID | Product  |
| ------- | ---------- | -------- |
| 101     | 1          | Laptop   |
| 102     | 2          | Phone    |
| 103     | 4          | Keyboard |

🔹 1. INNER JOIN
✅ Concept:
Returns only rows where CustomerID matches in both tables.
✅ Query:
SELECT Customers.CustomerName, Orders.Product
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
✅ Output:
CustomerName	Product
Alice	Laptop
Bob	Phone

🔹 2. LEFT JOIN
✅ Concept:
Returns all customers even if they didn’t place any orders.

✅ Query:
SELECT Customers.CustomerName, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
✅ Output:
CustomerName	Product
Alice	Laptop
Bob	Phone
Charlie	NULL

🔹 3. RIGHT JOIN
✅ Concept:
Returns all orders, even if no matching customer exists.

✅ Query:

SELECT Customers.CustomerName, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
✅ Output:
CustomerName	Product
Alice	Laptop
Bob	Phone
NULL	Keyboard

🔹 4. FULL OUTER JOIN (Not supported in MySQL directly, use UNION)
✅ Concept:
Returns all rows from both tables. If there’s no match, fills with NULL.

✅ Query (using UNION):

SELECT Customers.CustomerName, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.CustomerName, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
🔹 5. SELF JOIN
✅ Concept:
Used when you want to join a table with itself.

✅ Example: Table Employees
EmpID	EmpName	ManagerID
1	A	NULL
2	B	1
3	C	1
4	D	2

✅ Query:
SELECT E.EmpName AS Employee, M.EmpName AS Manager
FROM Employees E
LEFT JOIN Employees M ON E.ManagerID = M.EmpID;
✅ Output:
Employee	Manager
A	NULL
B	A
C	A
D	B

🔹 6. CROSS JOIN
✅ Concept:
Returns all possible combinations of two tables.

✅ Query:

SELECT Customers.CustomerName, Orders.Product
FROM Customers
CROSS JOIN Orders;
🔸 If 3 customers × 3 orders = 9 total rows.
