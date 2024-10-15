-- Number of Records: 67
SELECT CustomerName, City, Country 
FROM Customers
WHERE NOT (Country = 'Germany') AND NOT (Country = 'USA')
;
