-- SQL aliases are used to give a table, or a column in a table, a temporary name.

-- Aliases are often used to make column names more readable.

-- An alias only exists for the duration of that query.

-- An alias is created with the AS keyword.

-- Alias Column Syntax:
SELECT column_name AS alias_name
FROM table_name;

-- Alias Table Syntax:
SELECT column_name(s)
FROM table_name AS alias_name;

-- Example 1:
SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;

-- Example 2:
SELECT CustomerName AS Customer, ContactName as [Contact Person]
FROM Customers;

-- Example 3: (create alias address that combines 4 columns):
SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM Customers;

-- Example 4:
SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;

-- Exercise 1:
SELECT CustomerName, Address, PostalCode AS Pno 
FROM Customers;

-- Exercise 2:
SELECT * FROM Customers AS Consumers;