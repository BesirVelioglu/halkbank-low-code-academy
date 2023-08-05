--Odev2

--Metinsel Veri Tipleri

--CHAR(n): Sabit uzunluktaki karakter dizilerini temsil eder. 'n' parametresi, karakter dizisinin maksimum uzunluðunu belirtir (0 ile 8,000 arasýnda olabilir).
--VARCHAR(n): Deðiþken uzunluktaki karakter dizilerini temsil eder. 'n' parametresi, karakter dizisinin maksimum uzunluðunu belirtir (0 ile 8,000 arasýnda olabilir).
--NCHAR(n): Sabit uzunluktaki Unicode karakter dizilerini temsil eder. 'n' parametresi, karakter dizisinin maksimum uzunluðunu belirtir (0 ile 4,000 arasýnda olabilir).
--NVARCHAR(n): Deðiþken uzunluktaki Unicode karakter dizilerini temsil eder. 'n' parametresi, karakter dizisinin maksimum uzunluðunu belirtir (0 ile 4,000 arasýnda olabilir).

--sayýsal veri tipleri 

-- INT: -2,147,483,648 ile 2,147,483,647 arasýndaki tamsayýlarý temsil eder. Genellikle en sýk kullanýlan tamsayý veri tipidir.
-- FLOAT: Yaklaþýk olarak büyük ondalýklý veya tam sayý deðerlerini temsil eder.
--DECIMAL(p, s) veya NUMERIC(p, s): Sabit noktalý sayýlarý temsil eder. 'p', toplam basamak sayýsýný, 's', ondalýk basamak sayýsýný belirtir.

create Database DATAKOD

Use DATAKOD
go
create Table Personeller
(
Ad Varchar(100),
Soyad varchar(100),
DogumTarihi Date,

);

Insert INTO Personeller (Ad, Soyad, DogumTarihi) VALUES ('BESÝR' , 'VELIOGLU', '09.12.2000')

select * from Personeller

Insert INTO Personeller (Ad, Soyad, DogumTarihi) VALUES ('UBEY' , 'KAYA' , '02.11.1964')

Insert INTO Personeller (Ad, Soyad, DogumTarihi) VALUES ('ALÝ' , 'DENÝZ', '12.7.1999')

Insert INTO Personeller (Ad, Soyad, DogumTarihi) VALUES ('KEREM' , 'MEMIOGLU' , '05.3.2001')




