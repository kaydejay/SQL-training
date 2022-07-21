-- Exercise 1
SELECT * FROM Customers;
-- if you want to select all fields available in table, use following syntax:
SELECT * FROM table_name;
-- selecting specific fields (CustomerName and City) from (Customers) table:
SELECT CustomerName, City FROM Customers;
-- selecting only the distinct values from column in table:
SELECT DISTINCT Country FROM Customers;
-- list the number of different (distinct) customer countries:
SELECT COUNT (DISTINCT Country) FROM Customers;
