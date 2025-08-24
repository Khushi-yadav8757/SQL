The NOT operator is used in combination with other operators
to give the opposite result, also called the negative result.
 Syntax:
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;

-----------------------------------
example:Select only the customers that are NOT from Spain
SELECT * FROM Customers
WHERE NOT Country = 'Spain';
