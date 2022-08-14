--SQL ALTER TABLE Statement:
--The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.

--The ALTER TABLE statement is also used to add and drop various constraints on an existing table.

--ALTER TABLE - ADD COLUMN:
-- To add a column in a table, use the following syntax:
ALTER TABLE table_name
ADD column_name datatype;

-- adds an "Email" column to the "Customers" table:
ALTER TABLE Customers
ADD Email varchar(255);

--ALTER TABLE - DROP COLUMN:
--To delete a column in a table, use the following syntax (notice that some database systems don't allow deleting a column):

ALTER TABLE table_name
DROP COLUMN column_name;

--deletes the "Email" column from the "Customers" table:
ALTER TABLE Customers
DROP COLUMN Email;


--ALTER TABLE - ALTER/MODIFY COLUMN:
ALTER TABLE table_name
ALTER COLUMN column_name datatype;

--or--

ALTER TABLE table_name
MODIFY COLUMN column_name datatype;

--Example:
ALTER TABLE Persons
ADD DateOfBirth date;

--CHANGE DATA TYPE EXAMPLE:
ALTER TABLE Persons
ALTER COLUMN DateofBirth year;

--DROP COLUMN EXAMPLE:
ALTER TABLE Persons
DROP COLUMN DateofBirth;

--Exercise 1:
ALTER TABLE Persons
ADD birthday date;