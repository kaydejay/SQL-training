-- A wildcard character is used to substitute one or more characters in a string.

-- Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

-- * or % represents zero or more characters
-- ? or _ represents a single character
-- [] Represents any single character within the brackets
-- ! or ^ Represents any character not in the brackets
-- - Represents any single character within the specified range
-- # Represents any single numeric character

-- Example 1:
SELECT * FROM Customers
WHERE City LIKE 'ber%';

-- Example 2:
SELECT * FROM Customers
WHERE City LIKE '%es#';

-- Example 3:
SELECT * FROM Customers
WHERE City LIKE '_ondon';

-- Example 4:
SELECT * FROM Customers
WHERE City LIKE 'L_n_on';

-- Example 5: select all customers w/ city starting with b, s, or p
SELECT * FROM Customers
WHERE City LIKE '[bsp]%';

-- Example 6:
SELECT * FROM Customers
WHERE City LIKE '[a-c]';

--Example 7: with city NOT starting with b,s, or p
SELECT * FROM Customers
WHERE City LIKE '[!bsp]%';

--OR
SELECT * FROM Customers
WHERE City NOT LIKE '[bsp]%';

--Exercise 1:
SELECT * FROM Customers
WHERE City LIKE '_a';

-- Exercise 2:
SELECT * FROM Customers
WHERE City LIKE '[acs]%';

-- Exercise 3:
SELECT * FROM Customers
WHERE City LIKE '[a-f]%';

-- Exercise 4:
SELECT * FROM Customers
WHERE City LIKE '[!acf]%';