--Numele si descrierea produselor care sunt bauturi (au cantitatea masurata in ml)

SELECT P.Name, P.Price 
FROM Products AS P
WHERE P.ProductUnit = 'Ml'

--Numarul userilor a caror nume de familie incepe cu P

SELECT COUNT(*) 
FROM Users 
WHERE Users.LastName LIKE 'P%'

--Numele, descrierea si unitatea de masura a produsului grupate dupa unitatea de masura

SELECT P.Name, P.Description, P.ProductUnit
FROM Products AS P
GROUP BY P.ProductUnit, P.Name, P.Description

--Email-ul si numele de familie a userilor sortati dupa numele de familie

SELECT U.Email, U.LastName
FROM Users AS U
ORDER BY U.LastName

--Numele produsului si pretul acestuia, alaturi de cantitatea si statusul comenzii in care s-a gasit

SELECT P.Name, P.Price, PO.Quantity, O.OrderStatus
FROM Products AS P
INNER JOIN ProductOrders AS PO ON
	PO.ProductId = P.ID
INNER JOIN Orders AS O ON
	O.ID = PO.OrderID

--Numele, pretul si numarul de comenzi in care apare un produs pentru toate produsele care au fost comandate pana acum

SELECT P.Name, P.Price, COUNT(PO.ID) AS NumberOfOrders
FROM Products AS P
LEFT JOIN ProductOrders AS PO ON
	PO.ProductId = P.ID
GROUP BY P.Name, P.Price
HAVING COUNT(PO.ID) > 0

--Pretul minim si pretul maxim al produselor din magazin

SELECT MIN(P.Price) AS Minimum, MAX(P.Price) AS Maximum
FROM Products AS P

--Pretul mediu pentru fiecare categorie de produse (dupa unitatea de masura)

SELECT AVG(P.Price) AS Average_price, P.ProductUnit
FROM Products AS P
GROUP BY P.ProductUnit

--Statusul tuturor comenzilor si numarul de produse aferent

SELECT O.OrderStatus, COUNT(PO.OrderId) AS Number_of_products, O.ID
FROM ProductOrders AS PO
RIGHT JOIN Orders AS O ON
	PO.OrderId = O.ID
GROUP BY O.OrderStatus, O.ID

--Numele produselor care au fost comandate cel putin odata

SELECT DISTINCT P.Name
FROM Products AS P
INNER JOIN ProductOrders AS PO ON
	PO.ProductId = P.ID


