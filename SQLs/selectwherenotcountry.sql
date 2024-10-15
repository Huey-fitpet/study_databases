-- Number of Records: 67
SELECT CustomerName, City, Country 
FROM Customers
WHERE NOT (Country = 'Germany') AND NOT (Country = 'USA')
;
SELECT CustomerName, City, Country 
FROM Customers
WHERE Country <> 'Germany' AND Country <> 'USA'
;
SELECT CustomerName, City, Country 
FROM Customers
WHERE Country NOT IN ('Germany','USA');