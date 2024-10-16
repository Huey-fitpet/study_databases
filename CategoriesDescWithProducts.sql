
/*
- Table : Products 
- 조건 : 카테고리에 속한 상품 갯수 순으로 Desc

Number of Records: 8
CategoryName	Product_Cnt
Confections	        13
Seafood	            12
Beverages	        12
Condiments	        12
Dairy Products	    10
Grains/Cereals	    7
Meat/Poultry	    6
Produce	            5

*/



SELECT C.CategoryName, COUNT(P.ProductID) AS Product_Cnt
FROM Categories AS C
INNER JOIN Products AS P
ON C.CategoryID = P.CategoryID
GROUP BY C.CategoryID 
ORDER BY COUNT(P.ProductID) Desc
;


SELECT C.CategoryName, PG_TB.Product_Cnt 
FROM ( SELECT P.CategoryID, COUNT(P.ProductID) AS Product_Cnt
	   FROM Products AS P
	   GROUP BY P.CategoryID ) AS PG_TB
       INNER JOIN Categories AS C
       ON PG_TB.CategoryID = C.CategoryID 
ORDER BY PG_TB.Product_Cnt Desc
;

