--Q1. Find the top 5 customers by total purchase amount in the last 30 days.

--Table: Orders(order_id, customer_id, order_date, amount)
--SQL Solution:
SELECT 
    customer_id,
    SUM(amount) AS total_purchase
FROM Orders
WHERE order_date >= CURDATE() - INTERVAL 30 DAY
GROUP BY customer_id
ORDER BY total_purchase DESC
LIMIT 5;
