Q.Return all customers that are NOT from 'Germany', 'France', or 'UK':
Ans:-
SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');
