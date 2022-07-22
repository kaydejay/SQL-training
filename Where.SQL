-- WHERE Clause Example
SELECT * FROM Customers
WHERE Country ='Mexico';
-- SQL requires single quotes around text values (most systems allow double quotes)
-- numeric fields shouldn't be enclosed in quotes
SELECT * FROM Customers
WHERE CustomerID=1;
-- Equal =
SELECT * FROM Customers
WHERE Price = 18;
-- Exercise 1 
SELECT * FROM Customers
WHERE City = 'Berlin';
-- Exercise 2 
SELECT * FROM Customers
WHERE NOT City = 'Berlin';
-- Exercise 3
SELECT * FROM Customers
WHERE CustomerID = 32;
-- Exercise 4
SELECT * FROM Customers
WHERE City = 'Berlin';
AND PostalCode = 12209;
-- Exercise 5
SELECT * FROM Customers
WHERE City = 'Berlin'
OR City = 'London';
-- OPERATORS AND DESCRIPTORS: <>
-- <> Not equal. Can also be written as !=
-- OPERATORS AND DESCRIPTORS: BETWEEN
-- BETWEEN: Between a certain range
-- OPERATORS AND DESCRIPTORS: LIKE
-- LIKE: Search for a pattern
-- OPERATORS AND DESCRIPTORS: IN
-- To specify multiple possible values for a column