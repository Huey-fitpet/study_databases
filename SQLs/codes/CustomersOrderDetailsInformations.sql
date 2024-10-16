
/*
문제 
- 제품명, 가격, 주문갯수, 고객명 표시
[예시]
제품명                               단가        고객명              주문 갯수
Mozzarella di Giovanni        34.8        Wilman Kala        3

결과 출력

Number of Records: 1687
ProductName	    Price	CustomerName	            Order_Count
Alice Mutton	39.00	Antonio Moreno Taquería	        1
Alice Mutton	39.00	Berglunds snabbköp	            1
Alice Mutton	39.00	Blondel père et fils	        1
Alice Mutton	39.00	Bólido Comidas preparadas	    1
Alice Mutton	39.00	Bon app'	                    1
Alice Mutton	39.00	Bottom-Dollar Marketse	        2
Alice Mutton	39.00	Du monde entier	                1
Alice Mutton	39.00	Ernst Handel	                4
...
Zaanse koeken	9.50	QUICK-Stop	                    1
Zaanse koeken	9.50	Save-a-lot Markets	            2
Zaanse koeken	9.50	Wellington Importadora	        1


*/

SELECT P.ProductName, P.Price, C.CustomerName, Count(O.OrderID) as Order_Count
FROM ((Customers as C
INNER JOIN Orders as O
ON C.CustomerID = O.CustomerID) 
INNER JOIN OrderDetails as OD
ON O.OrderID = OD.OrderID)
INNER JOIN Products as P
ON P.ProductID = OD.ProductID
GROUP BY P.ProductName, C.CustomerName
;