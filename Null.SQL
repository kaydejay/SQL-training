--Null Function

--Syntax Example MySQL:
SELECT ProductName, UnitPrice * (UnitsInStock + IFNULL(UnitsInOrder, 0))
FROM Products

--or
SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
FROM Products;