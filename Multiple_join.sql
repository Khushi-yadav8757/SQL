Multiple Joins
You can join more than 2 tables.
  
Example:-
SELECT o.order_id, c.name, p.product_name
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products p ON o.product_id = p.product_id;
