USE AdventureWorks2017

GO

SELECT * FROM Person.Person

SELECT TOP 10 * FROM Person.Person -- Ýlk 10 satýrý alýr.

SELECT * FROM Person.Person where LastName = 'Goldberg' or FirstName = 'Mindy' -- Adý Mindy veya Soyadý Goldaberg olan herkesi alýr.

SELECT * FROM Person.Person where LastName = 'Goldberg' and FirstName = 'Mindy' -- Adý Mindy ve Soyadý Goldberg olaný çaðýrýr.

------------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM Production.Product

SELECT * FROM Production.Product where Name = 'Blade' -- Adý Blade olanlarý alýr.

SELECT * FROM Production.Product where Name like '%B' -- B ile bitenleri getirir.

SELECT * FROM Production.Product where Name like 'B%' -- B ile baþlayanlarý getirir.

SELECT * FROM Production.Product where Name not like 'B%' -- B ile baþlamayanlarý getirir.

SELECT * FROM Production.Product where color like 'Silver' -- Silver rengine sahip olanlarý getirir.

SELECT * FROM Production.Product where Name = 'Lock Ring' -- Adý Lock Ring olanlarý getirir.

SELECT * FROM Production.Product where Name = 'Road Pedal' and Color = 'Silver' or Size = '40' -- Adý RoadPedal ve Silver renginde olanalrý veya 40 punto büyüklüðündeki yazý tipine sahip olanalrý getirir.

SELECT * FROM Production.Product where Color = 'Black' or Color = 'Silver' -- Silver ve Black renginde olanlarý getirir.

SELECT * FROM Production.Product where Color in ('Silver','Black') -- Silver ve Black renginde olanlarý getirir.

SELECT * FROM Production.Product where Color not in ('Silver','Black') -- Silver ve Black rengi haricinde olanlarý getirir.

--------------------------------------------------------------------------------------------------------------------------------------

Select COUNT (*) from Production.Product -- Production.Product tablosundaki satýr sayýsýný verir.

SELECT * FROM Production.Product where ProductID != 3 -- ProductID'si 3 dýþýnda olanlarý çaðýrýr.

SELECT * FROM Production.Product where ProductID <> 3 -- ProductID'si 3 dýþýnda olanlarý çaðýrýr.

SELECT * FROM Production.Product where ProductID = 3 -- ProductID'si 3 olanlarý çaðýrýr.