-- The ANY and ALL operators allow you to perform a comparison between a single column value and a range of other values.

-- ANY Operator
-- returns a boolean value as a result
-- returns TRUE if ANY of the subquery values meet the condition
-- ANY means that the condition will be true if the operation is true for any of the values in the range.

-- ANY Syntax:
SELECT column_name(s)
FROM table_name
WHERE column_name operator ANY
(SELECT column_name
FROM table_name
WHERE condition);

--NOTE: The operator must be a standard comparison operator (=, <>, !=, >, >=, <, or <=).

-- The ALL operator:

-- returns a boolean value as a result
-- returns TRUE if ALL of the subquery values meet the condition
-- is used with SELECT, WHERE and HAVING statements
-- ALL means that the condition will be true only if the operation is true for all values in the range. 

-- ALL Syntax with SELECT:
SELECT ALL column_name(s)
FROM table_name
WHERE condition;

-- ALL Syntax with WHERE or HAVING:
SELECT column_name(s)
FROM table_name
WHERE column_name operator ALL
(SELECT column_name
FROM table_name
WHERE condition);

-- SQL Any Example 1:
SELECT ProductName
FROM Products
WHERE ProductID = ANY
(SELECT ProductID
FROM OrderDetails
WHERE Quantity = 10);

-- Example 2:
SELECT ProductName
FROM Products
WHERE ProductID = ANY
(Select ProductID
FROM OrderDetails
WHERE Quantity >99);

-- Example 3:
SELECT ProductName
FROM Products
WHERE ProductID = ANY
(SELECT ProductID
FROM OrderDetails
WHERE Quantity >1000);

-- SQL ALL Example 1:
SELECT ALL ProductName
FROM Products 
WHERE TRUE;
--(lists all product names)

-- Example 2:
SELECT ProductName
FROM Products
WHERE ProductID = ALL
(SELECT ProductID
FROM OrderDetails
WHERE Quantity=10);