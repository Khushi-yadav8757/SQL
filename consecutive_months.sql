--Q2. Find customers who placed orders in consecutive months.
--Table: Orders(customer_id, order_date)
--SQL Solution:

WITH monthly_orders AS (
    SELECT DISTINCT 
        customer_id,
        DATE_FORMAT(order_date, '%Y-%m') AS order_month
    FROM Orders
)
SELECT DISTINCT a.customer_id
FROM monthly_orders a
JOIN monthly_orders b
  ON a.customer_id = b.customer_id
  AND TIMESTAMPDIFF(MONTH, a.order_month, b.order_month) = 1;
