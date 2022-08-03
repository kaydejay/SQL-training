-- The SELECT TOP clause is used to specify the number of records to return.

-- The SELECT TOP clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.

-- Note: Not all database systems support the SELECT TOP clause. MySQL supports the LIMIT clause to select a limited number of records, while Oracle uses FETCH FIRST n ROWS ONLY and ROWNUM.

-- Example 1 Syntax: SQL Server / MS Access:
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;

-- Example 2 Syntax: MySQL:
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;

-- Example 3: 
SELECT TOP 3 * FROM Customers;

-- Example 3.1:
SELECT * FROM Customers
LIMIT 3;

-- Example 3.2:
SELECT * FROM Customers
FETCH FIRST 3 ROWS ONLY;

-- Example 4.1:
SELECT TOP 50 PERCENT * FROM Customers;

-- Example 4.2:
SELECT * FROM Customers
FETCH FIRST 50 PERCENT ROWS ONLY;

-- Example 5.1:
SELECT TOP 3 * FROM Customers
WHERE COUNTRY = 'Germany';

-- Example 5.2:
SELCT * FROM Customers
WHERE Country='Germany'
LIMIT 3;

-- Example 5.3:
SELECT * FROM Customers
WHERE Country='Germany'
FETCH FIRST 3 ROWS ONLY;