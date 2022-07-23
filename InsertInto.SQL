-- The INSERT INTO statement is used to insert new records in a table.
-- It is possible to write the INSERT INTO statement in two ways:
-- 1. Specify both the column names and the values to be inserted,
-- 2. If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query. However, make sure the order of the values is in the same order as the columns in the table. 

-- Example 1
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger,' '4006', 'Norway');
-- auto-increment fields will be generated automatically when a new record is inserted into the table

-- Example 2
INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavender', 'Norway');

-- Exercise:
INSERT INTO Customers (CustomerName, Address, City, PostalCode, Country)
VALUES ('Hekkan Burger', 'Gatevein 15', 'Sandnes', '4306', 'Norway');