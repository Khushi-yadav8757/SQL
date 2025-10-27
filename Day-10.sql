-- What is a JOIN?
JOIN is used to combine rows from two or more tables based on a related column between them (usually a primary key and foreign key relationship).
 

| Join Type       | Description                                                                  |
| --------------- | ---------------------------------------------------------------------------- |
| INNER JOIN      | Returns only matching rows between tables.                                   |
| LEFT JOIN       | Returns all rows from the left table, and matched rows from the right table. |
| RIGHT JOIN      | Returns all rows from the right table, and matched rows from the left table. |
| FULL OUTER JOIN | Returns all rows when there is a match in one of the tables.                 |
| SELF JOIN       | Joins a table to itself.                                                     |
| CROSS JOIN      | Returns all possible combinations (Cartesian product).                       |

-- Example Tables
 
-- Table 1: Customers
| CustomerID | CustomerName |
| ---------- | ------------ |
| 1          | Alice        |
| 2          | Bob          |
| 3          | Charlie      |

-- Table 2: Orders

| OrderID | CustomerID | Product  |
| ------- | ---------- | -------- |
| 101     | 1          | Laptop   |
| 102     | 2          | Phone    |
| 103     | 4          | Keyboard |
