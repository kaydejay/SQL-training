-- The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). The result is 0 records from the right side, if there is no match.

-- LEFT JOIN Syntax:, aka LEFT OUTER JOIN

SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;

-- SQL Left Join Example:
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

-- Note: The LEFT JOIN keyword returns all records from the left table (Customers), even if there are no matches in the right table (Orders