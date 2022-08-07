-- The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.

-- The BETWEEN operator is inclusive: begin and end values are included. 

--BETWEEN Syntax:
SELECT Column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

-- Example 1:
SELECT * FROM Products
WHERE Price BETWEEN 10 and 20;

-- Example 2:
SELECT * FROM Products
WHERE Price NOT BETWEEN 10 and 20;

-- Example 3: selects all products with a price between 10 and 20. In addition; do not show products with a CategoryID of 1,2, or 3
SELECT * FROM Products
WHERE Price BETWEEN 10 and 20
AND CategoryID NOT IN (1,2,3);

-- Example 4:
SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

-- Example 5:
SELECT * FROM Products
WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

-- Example 6:
SELECT * FROM Orders
WHERE OrderDate BETWEEN #07/01/1996# and #07/31/1996#;

-- Example 7:
SELECT * FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

-- Exercise 1:
SELECT * FROM Products
WHERE Price BETWEEN 10 and 20;

-- Exercise 2:
SELECT * FROM Products
WHERE Price NOT BETWEEN 10 and 20;

-- Exercise 3:
SELECT * FROM Products
WHERE ProductName BETWEEN 'Geitost' and 'Pavlova';