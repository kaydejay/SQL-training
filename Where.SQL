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

-- The WHERE clause can be combined with AND, OR, and NOT operators. 
-- The AND operator displays a record if ALL the conditions separated by AND are TRUE.
-- The OR operator displays a record if ANY of the conditions separated by OR are TRUE.
-- The NOT operator displays a record if the condition(s) is NOT TRUE.

-- AND Exercise
SELECT * FROM Customers
WHERE Country='Germany' AND City ='Berlin';
-- OR Exercise
SELECT * FROM Customers
WHERE City='Berlin' OR City='Munchen';
-- NOT Exercise
SELECT * FROM Customers
WHERE NOT Country='Germany';
-- Combining AND, OR, and NOT Exercise 1
SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='Munchen');
-- Combining AND, OR, and NOT Exercise 2
SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';