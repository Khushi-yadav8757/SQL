-> it return row from left that has No MAtch in Right
syntax-
SELECT * FROM A
LEFT JOIN B 
ON A.KEY = B.KEY
WHERE B.KEY IS NULL 

1Q.Get all Customers who haven't place any order?
ans:- SELECT * FROM customers AS c
      LEFT JOIN orders AS o
      ON c.id =o.customer_id
      WHERE o.customer_id IS NULL

