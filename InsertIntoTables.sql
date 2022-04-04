INSERT INTO Users(FirstName, LastName, Email) VALUES
('Oana', 'Alexa', 'oana.alexa@a.com'),
('Ana', 'Pop', 'ana.pop@yahoo.com'),
('Andrei', 'Ionescu', 'andrei@gmail.com'),
('Marius', 'Popescu', 'mpopescu@p.com'),
('Maria', 'Filip', 'maria@a.com'),
('George', 'Grigorescu', 'ggeorge@yahoo.com'),
('Marius', 'Apostol', 'apostol@a.com'),
('Mara', 'Filip', 'mara_filip@gmsil.com'),
('Mara', 'Neagoe', 'mara@n.com'),
('Oana', 'Pop', 'oanapop@p.com')

INSERT INTO Addresses(City, Street, Number, UserId) VALUES
('Arad', 'Bulevardul Revolutiei', '12A', 1),
('Timisoara', 'Calea Aradului', '13', 2),
('Bucuresti', 'Calea Victoriei', '60', 3),
('Brasov', 'Calea Sforii', '20', 4),
('Arad', 'Calea Radnei', '30B', 5),
('Cluj-Napoca', 'Teodor Mihaly', '23', 6),
('Cluj-Napoca', 'Calea Dorobantilor', '66', 7),
('Timisoara', 'Strada Mihai Eminescu', '50C', 8),
('Iasi', 'Strada Mihai Eminescu', '90', 9),
('Iasi', 'Bulevardul Revolutiei', '1', 10)

INSERT INTO Products(Name, Description, Amount, Price, ProductUnit, CoffeeIntensity) VALUES 
('Espresso', 'Cafea simpla', 100, 5.5, 'Ml', 5),
('Ristretto', 'Shot de cafea', 40, 4, 'Ml', 7),
('Cappucino', 'Cafea simpla cu spuma de lapte', 150, 10, 'Ml', 5),
('Latte Machiato', 'Cafea simpla cu spuma de lapte', 250, 12, 'Ml', 5),
('Cappucino vienez', 'Cafea simpla cu spuma de lapte si frisca', 150, 15, 'Ml', 5),
('Cafea boabe', 'Sac de cafea', 500, 30, 'G', 6),
('Cafea macinata', 'Pachet de cafea', 500, 25, 'G', 5),
('Ice coffee', 'Cafea simpla cu lapte si gheata', 200, 15, 'Ml', 4),
('Double cream', 'Cafea simpla cu dubla spuma de lapte', 200, 15, 'Ml', 4),
('Double coffee', 'Cafea dubla', 100, 8, 'Ml', 8)

INSERT INTO Orders(UserId, OrderStatus) VALUES 
(1, 'Canceled'),
(1, 'Placed'),
(2, 'InProgress'),
(3, 'Delivered'),
(5, 'Canceled'),
(6, 'Delivered'),
(7, 'Placed'),
(8, 'InProgress'),
(9, 'Placed'),
(9, 'Delivered')

INSERT INTO ProductOrders(ProductId, OrderId, Quantity) VALUES 
(1, 1, 2),
(1, 2, 3),
(2, 1, 1),
(3, 3, 4),
(4, 4, 1),
(3, 2, 3),
(5, 1, 2),
(7, 5, 3),
(8, 6, 6),
(10, 8, 2)