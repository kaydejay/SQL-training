-- The EXISTS operator is used to test for the existence of any record in a subquery.

-- The EXISTS operator returns TRUE if the subquery returns one or more records.

-- Exists Syntax:
SELECT column_name(s)
FROM table_name
WHERE EXISTS
(SELECT column_name FROM table_name WHERE condition);

-- Example 1:
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.Supplier ID = Suppliers.SupplierID AND Price < 20); 

-- Example 2:
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.Supplier ID = Suppliers.SupplierID AND Price = 22); 