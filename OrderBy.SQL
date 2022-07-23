--The ORDER BY keyword is used to sort the result-set in ascending or descending order.
--The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.
--Example 1
SELECT * FROM Customers
ORDER BY Country;
--Example 2
SELECT * FROM Customers
ORDER BY Country DESC;
--Example 3
SELECT * FROM Customers
ORDER BY Country, CustomerName;
--Example 4
SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;
--Exercise 1
SELECT * FROM Customers
ORDER BY City;
--Exercise 2
SELECT * FROM Customers
ORDER BY City DESC;
--Exercise 3
SELECT * FROM Customers
ORDER BY Country, City;