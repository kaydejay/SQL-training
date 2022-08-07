-- The INNER JOIN keyword selects records that have matching values in both tables.

SELECT column_name
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

-- Example 1:
SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

-- Example 2:
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);

-- Exercise 1:
SELECT * FROM Orders
INNER JOIN ON Orders.CustomerID=Customers.CustomerID;