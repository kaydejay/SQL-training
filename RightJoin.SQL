-- The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match.

-- RIGHT JOIN Syntax, aka RIGHT OUTER JOIN:
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;

-- Right Join Example:
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.Employee ID
ORDER BY Orders.OrderID;

-- Note: The RIGHT JOIN keyword returns all records from the right table (Employees), even if there are no matches in the left table (Orders).

-- Exercise 1:
SELECT * FROM Orders
RIGHT JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;