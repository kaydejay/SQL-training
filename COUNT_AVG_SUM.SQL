-- The COUNT() function returns the number of rows that matches a specified criterion.
-- COUNT() Syntax:
SELECT COUNT(column_name)
FROM table_name
WHERE condition;

-- Count Example:
SELECT Count(ProductID)
FROM Products;
--Note: NULL values are not counted.

-- The AVG() function returns the average value of a numeric column. 
-- AVG() Syntax:
SELECT AVG(column_name)
FROM table_name
WHERE condition;

-- AVG() Example:
SELECT AVG(Price)
FROM Products;
-- NOTE: NULL values are ignored.

-- The SUM() function returns the total sum of a numeric column. 
-- SUM() Syntax:
SELECT SUM(column_name)
FROM table_name
WHERE condition;

-- SUM() Example:
SELECT SUM(Quantity)
FROM OrderDetails;

-- Exercise 1:
SELECT COUNT (*)
FROM Products
WHERE Price = 18

-- Exercise 2:
SELECT AVG(Price)
FROM Products;

--Exercise 3:
SELECT SUM(Price)
FROM Products;