Q.Return all customers that have an order in the Orders table:
Example:-
SELECT * FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders);
