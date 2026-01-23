The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

Example
Sort the products from highest to lowest price:

SELECT * FROM Products
ORDER BY Price DESC;
Order Alphabetically
For string values the ORDER BY keyword will order alphabetically:

Example
  
Sort the products alphabetically by ProductName:
SELECT * FROM Products
ORDER BY ProductName;
