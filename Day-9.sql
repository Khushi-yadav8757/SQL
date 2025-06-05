🔸 Q1. Find the total quantity and total sales (Quantity × Price) for each category.
  SELECT Category,
       SUM(Quantity) AS TotalQuantity,
       SUM(Quantity * Price) AS TotalSales
FROM Sales
GROUP BY Category;

🔸 Q2. Show only those categories where total sales are more than 500.
  
SELECT Category,
       SUM(Quantity * Price) AS TotalSales
FROM Sales
GROUP BY Category
HAVING SUM(Quantity * Price) > 500;


🔸 Q3. Find the average price of each product.

SELECT Product,
       AVG(Price) AS AveragePrice
FROM Sales
GROUP BY Product;
🔸 Q4. Count how many distinct products are sold in each category.
  SELECT Category,
       COUNT(DISTINCT Product) AS TotalProducts
FROM Sales
GROUP BY Category;
🔸 Q5. Show products where the total quantity sold is more than 10.
SELECT Product,
       SUM(Quantity) AS TotalQuantity
FROM Sales
GROUP BY Product
HAVING SUM(Quantity) > 10;

