-- A field with a NULL value is a field with no value.
-- If a field in a table is optional, it is possible to insert a new record or update a record without adding a value to this field. 
-- Then, the field will be saved with a NULL value.
-- A NULL value is different from a zero value or a field that contains spaces. A field with a NULL value is one that has been left blank during record creation!
-- It is not possible to test for NULL values with comparison operators, such as =, <, or <>.
-- We will have to use the IS NULL and IS NOT NULL operators instead.

-- Example 1: IS NULL Syntax
SELECT column_names
FROM table_name
WHERE column_name IS NULL;

-- Example 2: IS NOT NULL Syntax
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;

-- Exercise 1:
SELECT * FROM Customers
WHERE PostalCode IS NULL;

-- Exercise 2:
SELECT * FROM Customers
WHERE PostalCode IS NOT NULL;