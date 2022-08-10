-- The UNION operator is used to combine the result-set of two or more SELECT statements.

-- Every SELECT statement within UNION must have the same number of columns
-- The columns must also have similar data types
-- The columns in every SELECT statement must also be in the same order

-- UNION Syntax:
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2

-- The UNION operator selects only distinct values by default.

-- UNION ALL Syntax:
SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2

-- UNION ALL allows duplicate values.
-- Note: The column names in the result-set are usually equal to the column names in the first SELECT statement.

-- Example 1:
SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;

-- Note: If some customers or suppliers have the same city, each city will only be listed once, because UNION selects only distinct values. Use UNION ALL to also select duplicate values!

-- Example 2:
SELECT City FROM Customers
UNION ALL 
SELECT City FROM Suppliers
ORDER BY City;

-- SQL Union with WHERE Example:
SELECT City, Country FROM Customers
WHERE Country = 'Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country = 'Germany'
ORDER BY City;

-- SQL Union with WHERE ALL Example:
SELECT City, Country FROM Customers
WHERE Country = 'Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country = 'Germany'
ORDER BY City;

-- Example 5:
SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'Supplier' AS ContactName, City, Country
FROM Suppliers;

-- Notice the "AS Type" above - it is an alias. SQL Aliases are used to give a table or a column a temporary name. An alias only exists for the duration of the query. So, here we have created a temporary column named "Type", that list whether the contact person is a "Customer" or a "Supplier".