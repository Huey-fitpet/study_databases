/*
- Table : Orders
- 조건 : 주문 받은 갯수로 내림차순, 회사 직원명도 표시

Number of Records: 77
ProductName	            SupplierName	            COUNT(OD.OrderID)
Raclette Courdavault	Gai pâturage	                54
Camembert Pierrot	    Gai pâturage	                51
Gorgonzola Telino	    Formaggi Fortini s.r.l.	        51
Guaraná Fantástica	    Refrescos Americanas LTDA	    51
Gnocchi di nonna        Alice	Pasta Buttini s.r.l.	50
Tarte au sucre	        Forêts d'érables	            48
...
Chocolade	            Zaanse Snoepfabriek	            6
Gravad lax	            Svensk Sjöföda AB	            6
Genen Shouyu	        Mayumi's	                    6
Mishi Kobe Niku	        Tokyo Traders	                5


*/



SELECT P.ProductName, S.SupplierName, COUNT(OD.OrderID)
FROM ((Suppliers AS S
INNER JOIN Products AS P
ON S.SupplierID = P.SupplierID)
INNER JOIN OrderDetails AS OD
ON P.ProductID = OD.ProductID)
GROUP BY P.ProductName
ORDER BY COUNT(OD.OrderID) desc 
;

/*
SELECT P.ProductName, S.SupplierName, OD.OrderID
FROM ((Suppliers AS S
INNER JOIN Products AS P
ON S.SupplierID = P.SupplierID)
INNER JOIN OrderDetails AS OD
ON P.ProductID = OD.ProductID)
ORDER BY P.ProductName desc 
;
*/