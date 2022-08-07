-- The IN operator allows you to specify multiple values in a WHERE clause.
-- The IN operator is a shorthand for multiple OR conditions

-- IN Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value 1, value 2...)

--OR

SELECT column_name
FROM table_name
WHERE column_name IN (SELECT statement)

-- Example 1:
SELECT * FROM Customers
WHERE Country IN ('Germany','France', 'UK');

-- Example 2:
SELECT * FROM Customers
WHERE Country NOT IN ('Germany','France', 'UK');

-- Example 3:
SELECT * FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);

-- Exercise 1:
SELECT * FROM Customers
WHERE Country IN ('Norway', 'France');

-- Exercise 2:
SELECT * FROM Customers
WHERE Country NOT IN ('Norway', 'France');