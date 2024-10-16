
/*
- Table : Customers, Orders
- 조건 : CustomerName별로 주문 갯수 표시
- 연결 키는 각자 찾기


Number of Records: 89
CustomerName	                    Customer_Count
Alfreds Futterkiste	                    6
Ana Trujillo Emparedados y helados	    4
Antonio Moreno Taquería	                7
...
White Clover Markets	                14
Wilman Kala	                            8
Wolski	                                7

*/


SELECT C.CustomerName, COUNT(C.CustomerID) AS Customer_Name 
FROM Customers as C
INNER JOIN Orders as O
ON C.CustomerID = O.CustomerID 
GROUP BY C.CustomerName
;