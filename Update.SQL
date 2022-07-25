-- The UPDATE statement is used to modify the existing records in a table.

-- Example 1:
UPDATE table_name
SET column 1 = value1, column 2 = value 2, ...
WHERE condition;

-- Note: Be careful when updating records in a table! Notice the WHERE clause in the UPDATE statement. The WHERE clause specifies which record(s) that should be updated. If you omit the WHERE clause, all records in the table will be updated!

-- Example 2:
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

-- Example 3:
UPDATE Customers
SET ContactName ='Juan'
WHERE Country='Mexico';

-- Example 4:
UPDATE Customers
SET ContactName= 'Juan'

-- Exercise 1:
UPDATE Customers
SET City='Oslo';

-- Exercise 2:
UPDATE Customers
SET City='Oslo'
WHERE Country = 'Norway';

-- Exercise 3:
UPDATE Customers
SET City='Oslo',
Country = 'Norway'
WHERE CustomerID=32