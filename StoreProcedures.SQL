--A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.

--So if you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.

--You can also pass parameters to a stored procedure, so that the stored procedure can act based on the parameter value(s) that is passed.

--Stored Procedure Syntax:
CREATE PROCEDURE procedure_name
as
sql_statement
GO;

--Execute a Stored Procedure:
EXEC procedure_name;

--Example 1:
CREATE PROCEDURE SelectAllCustomers
as
SELECT * FROM SelectAllCustomers
GO;

--Ex:
EXEC SelectAllCustomers;

--Ex 2: Stored Procedures with One Parameter:
CREATE PROCEDURE SelectAllCustomers @City nvarchar(30)
as
SELECT * FROM Customers WHERE City = @City
GO;

--Ex 2:
EXEC SelectAllCustomers @ City = 'London';

--Ex 3: Stored Procedure with Multiple Parameters:
-- Setting up multiple parameters is very easy. Just list each parameter and the data type separated by a comma as shown below.

--The following SQL statement creates a stored procedure that selects Customers from a particular City with a particular PostalCode from the "Customers" table:
CREATE PROCEDURE SelectAllCustomers @City nvarchar(30), @PostalCode nvarchar(10)
as
SELECT * FROM Customers WHERE City = @City AND PostalCode = @PostalCode
GO;

EXEC SelectAllCustomers @ City = 'London', @PostalCode = 'WA1 1DP';