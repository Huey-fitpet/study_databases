/*

- Table : Customers, Orders 등 
- 조건 : 대상 고객이 지불해야 하는 총 금액 순으로 Desc - 
- 주문 없는 고객도 이름과 나라는 출력 [대상 고객] 
- SELECT * FROM Customers where CustomerID IN (5,10,22)


Number of Records: 3
CustomerID	    CustomerName	                    Country	    TOTAL_PRICE
    5	    Berglunds snabbköp	                     Sweden	    28355.75
    10	    Bottom-Dollar Marketse	                Canada	    24429.15
    22	    FISSA Fabrica Inter. Salchichas S.A.	Spain	

*/


SELECT 
	CustOrdOrdDProd.CustomerID,
	CustOrdOrdDProd.CustomerName, 
    CustOrdOrdDProd.Country, 
    SUM(CustOrdOrdDProd.P_Q_Total) AS TOTAL_PRICE
FROM (
	SELECT 
    	C.CustomerID, 
        C.CustomerName, 
        C.Country, 
        P.Price, 
        OD.Quantity, 
        P.Price * OD.Quantity AS P_Q_Total
	FROM (
    	SELECT 
        	CustomerID, 
            CustomerName, 
            Country 
        FROM Customers
		WHERE CustomerID IN (5,10,22) ) AS C 
        LEFT JOIN Orders AS O
        ON C.CustomerID = O.CustomerID 
        LEFT JOIN OrderDetails AS OD 
        ON OD.OrderID = O.OrderID
        LEFT JOIN Products AS P
        ON OD.ProductID = P.ProductID
        ) AS CustOrdOrdDProd
 GROUP BY CustOrdOrdDProd.CustomerName