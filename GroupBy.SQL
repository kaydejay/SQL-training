-- SQL Group By Statement
-- The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".

--The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

-- Group By Syntax:
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s)

-- Group By Example 1:
SELECT COUNT(CustomerID), country
FROM customers
GROUP BY Country;

-- Example 2:
SELECT COUNT(CustomerID), Country
FROM customers
GROUP BY Country;
ORDER BY COUNT(CustomerID) DESC;

-- Group By with JOIN Example
SELECT Shippers.ShipperName, Count(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;

-- Exercise 1:
SELECT COUNT(CustomerID), Country
FROM Customers 
GROUP BY Country;

-- Exercise 2:
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;