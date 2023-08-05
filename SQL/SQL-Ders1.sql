USE AdventureWorks2017

GO

SELECT * FROM Person.Person

SELECT TOP 10 * FROM Person.Person -- �lk 10 sat�r� al�r.

SELECT * FROM Person.Person where LastName = 'Goldberg' or FirstName = 'Mindy' -- Ad� Mindy veya Soyad� Goldaberg olan herkesi al�r.

SELECT * FROM Person.Person where LastName = 'Goldberg' and FirstName = 'Mindy' -- Ad� Mindy ve Soyad� Goldberg olan� �a��r�r.

------------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM Production.Product

SELECT * FROM Production.Product where Name = 'Blade' -- Ad� Blade olanlar� al�r.

SELECT * FROM Production.Product where Name like '%B' -- B ile bitenleri getirir.

SELECT * FROM Production.Product where Name like 'B%' -- B ile ba�layanlar� getirir.

SELECT * FROM Production.Product where Name not like 'B%' -- B ile ba�lamayanlar� getirir.

SELECT * FROM Production.Product where color like 'Silver' -- Silver rengine sahip olanlar� getirir.

SELECT * FROM Production.Product where Name = 'Lock Ring' -- Ad� Lock Ring olanlar� getirir.

SELECT * FROM Production.Product where Name = 'Road Pedal' and Color = 'Silver' or Size = '40' -- Ad� RoadPedal ve Silver renginde olanalr� veya 40 punto b�y�kl���ndeki yaz� tipine sahip olanalr� getirir.

SELECT * FROM Production.Product where Color = 'Black' or Color = 'Silver' -- Silver ve Black renginde olanlar� getirir.

SELECT * FROM Production.Product where Color in ('Silver','Black') -- Silver ve Black renginde olanlar� getirir.

SELECT * FROM Production.Product where Color not in ('Silver','Black') -- Silver ve Black rengi haricinde olanlar� getirir.

--------------------------------------------------------------------------------------------------------------------------------------

Select COUNT (*) from Production.Product -- Production.Product tablosundaki sat�r say�s�n� verir.

SELECT * FROM Production.Product where ProductID != 3 -- ProductID'si 3 d���nda olanlar� �a��r�r.

SELECT * FROM Production.Product where ProductID <> 3 -- ProductID'si 3 d���nda olanlar� �a��r�r.

SELECT * FROM Production.Product where ProductID = 3 -- ProductID'si 3 olanlar� �a��r�r.