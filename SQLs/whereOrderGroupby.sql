/*
Number of Records: 2
EmployeeID	Order_Count
    7 	        14 
    9 	        6 
*/

SELECT EmployeeID, COUNT(OrderID) as Order_Count
FROM Orders
GROUP BY EmployeeID
HAVING EmployeeID IN(7,9)
;