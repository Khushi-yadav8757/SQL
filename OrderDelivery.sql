--Q3. Find the percentage of orders that were delivered late.
--Table: Orders(order_id, delivery_date, expected_date)
--SQL Solution:

SELECT 
    ROUND(
        (SUM(CASE WHEN delivery_date > expected_date THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 
    2) AS late_delivery_percent
FROM Orders;
