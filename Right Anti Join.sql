Return rows from right that has NOMatch in Left.
  Syntax:
SELECT * FROM A 
RIGHT JOIN B
ON A.key=b.key
WHERE A.key IS NULL

Q1. GET ALL ORDERS WITHOUT MATCHING CUSTOMERS
ANS:- SELECT * FROM CUSTOMERS AS c
      LEFT JOIN ORDER AS O
      ON c.id = o.customers_id
      WHERE c.id IS NULL

2Q. GET all orders without matching customers (using left join)
ans:- SELECT * FROM order AS o
      LEFT JOIN customer AS c
      ON c.id = o.customer_id
      WHERE c.id IS NULL
