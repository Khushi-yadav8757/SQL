--Q. Select all customers from Spain that starts with the letter 'G'
--Ans:-
SELECT *
FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%';
