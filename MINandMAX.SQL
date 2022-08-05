-- The MIN() function returns the smallest value of the selected column.
-- The MAX() function returns the largest value of the selected column.

-- MIN Syntax:
SELECT MIN(column_name)
FROM table_name
WHERE condition;

-- MAX Syntax
SELECT MAX(column_name)
FROM table_name
WHERE condition;

-- MIN Example 1:
SELECT MIN (Price) AS SmallestPrice
FROM Products;

-- MAX Example 1:
SELECT MAX (Price) AS LargestPrice
FROM Products;

-- Exercise 1:
SELECT MIN(Price)
FROM Products;