/*
조건 : EmployeeID가 7, 9 직원에 주문 갯수를 각각 표시
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