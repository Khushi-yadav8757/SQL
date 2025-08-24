The NOT operator is used in combination with other operators
to give the opposite result, also called the negative result.
 Syntax:
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;

------------------------------------
example1:Select only the customers that are NOT from Spain
SELECT * FROM Customers
WHERE NOT Country = 'Spain';
---------------------------------------
example2:Select customers that does not start with the letter 'k'

SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'k%';
------------------------------------
example3:Select customers with a customerID not between 10 and 80:

SELECT * FROM Customers
WHERE CustomerID NOT BETWEEN 10 AND 80;
---------------------------------------------
example4:Select customers with a CustomerId not greater than 100:

SELECT * FROM Customers
WHERE NOT CustomerID > 100;

