-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
-- There are two wildcards often used in conjunction with the LIKE operator:
-- The percent sign (%) represents zero, one, or multiple characters
-- The underscore sign (_) represents one, single character
-- Note: MS Access uses an asterisk (*) instead of the percent sign (%), and a question mark (?) instead of the underscore (_).
-- The percent sign and the underscore can also be used in combinations!

-- LIKE Syntax:
SELECT column 1, column 2...
FROM table_name
WHERE columnN LIKE pattern;

-- Tip: You can also combine any number of conditions using AND or OR operators.

-- Example 1:
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';
-- selects all customers with a CustomerName starting with "a"

-- Example 2:
SELECT * FROM Customers
WHERE CustomerName LIKE '%a';
-- selects all customers with a CustomerName ending with "a":

-- Example 3: 
SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';
-- selects all customers with a CustomerName that have "or" in any position

-- Example 4:
SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';
-- selects all customers with a CustomerName that have "r" in the second position:

-- Example 5:
SELECT * FROM customers
WHERE CustomerName LIKE 'a__%'
-- selects all customers with a CustomerName that starts with "a" and are at least 3 characters in length:

-- Example 6:
SELECT * FROM Customers
WHERE ContactName LIKE 'a%o';
-- selects all customers with a ContactName that starts with "a" and ends with "o":

-- Example 7:
SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'a%'
-- selects all customers with a CustomerName that does NOT start with "a":

-- Exercise 1:
SELECT * FROM Customers
WHERE City LIKE 'a%';

-- Exercise 2:
SELECT * FROM Customers
WHERE City Like '%a';

-- Exercise 3:
SELECT * FROM Customers
WHERE City LIKE '%a%'

-- Exercise 4:
SELECT * FROM Customers
WHERE City LIKE 'a&b';

-- Exercise 5:
SELECT * FROM Customers
WHERE City NOT LIKE 'a%';

-- Exercise 6:
SELECT * FROM Customers
WHERE City LIKE '_a%';

-- Exercise 7:
SELECT * FROM Customers
WHERE City LIKE '[acs]';