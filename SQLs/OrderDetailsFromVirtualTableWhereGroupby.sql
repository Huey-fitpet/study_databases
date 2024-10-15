
/*
- 조건 : OrderID가 10284 ~ 10437 Quantity 합계와 건수 표시
- where 완료 후 가상 Table로 group by 진행

Number of Records: 154
OrderID	Quantity_sum	Order_cnt
10284 	    61 	        4 
10285 	    121 	    3 
10286 	    140 	    2 
10287 	    75 	        3 
10288 	    13 	        2 
10289 	    39 	        2 
10290 	    60 	        4 
...
10434 	    24 	        2 
10435 	    32 	        3 
10436 	    99 	        4 
10437 	    15 	        1 
*/

SELECT OrderID, SUM(Quantity) as Quantity_sum, COUNT(OrderDetailID) as Order_cnt
FROM (SELECT * 
	FROM OrderDetails
	WHERE OrderID BETWEEN 10284 AND 10437) 
GROUP BY OrderID
;
