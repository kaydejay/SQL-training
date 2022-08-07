-- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

-- Example:
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

-- (INNER) JOIN: Returns records that have matching values in both tables
-- LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
-- RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
-- FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table

-- Exercise 1:
SELECT * FROM Orders
LEFT JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

-- Exercise 2:
SELECT * FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

-- Exercise 3:
SELECT * FROM Orders
RIGHT JOIN Customers ON Orders.CustomerID=Customers.CustomerID;