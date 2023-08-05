--Odev2

--Metinsel Veri Tipleri

--CHAR(n): Sabit uzunluktaki karakter dizilerini temsil eder. 'n' parametresi, karakter dizisinin maksimum uzunlu�unu belirtir (0 ile 8,000 aras�nda olabilir).
--VARCHAR(n): De�i�ken uzunluktaki karakter dizilerini temsil eder. 'n' parametresi, karakter dizisinin maksimum uzunlu�unu belirtir (0 ile 8,000 aras�nda olabilir).
--NCHAR(n): Sabit uzunluktaki Unicode karakter dizilerini temsil eder. 'n' parametresi, karakter dizisinin maksimum uzunlu�unu belirtir (0 ile 4,000 aras�nda olabilir).
--NVARCHAR(n): De�i�ken uzunluktaki Unicode karakter dizilerini temsil eder. 'n' parametresi, karakter dizisinin maksimum uzunlu�unu belirtir (0 ile 4,000 aras�nda olabilir).

--say�sal veri tipleri 

-- INT: -2,147,483,648 ile 2,147,483,647 aras�ndaki tamsay�lar� temsil eder. Genellikle en s�k kullan�lan tamsay� veri tipidir.
-- FLOAT: Yakla��k olarak b�y�k ondal�kl� veya tam say� de�erlerini temsil eder.
--DECIMAL(p, s) veya NUMERIC(p, s): Sabit noktal� say�lar� temsil eder. 'p', toplam basamak say�s�n�, 's', ondal�k basamak say�s�n� belirtir.

create Database DATAKOD

Use DATAKOD
go
create Table Personeller
(
Ad Varchar(100),
Soyad varchar(100),
DogumTarihi Date,

);

Insert INTO Personeller (Ad, Soyad, DogumTarihi) VALUES ('BES�R' , 'VELIOGLU', '09.12.2000')

select * from Personeller

Insert INTO Personeller (Ad, Soyad, DogumTarihi) VALUES ('UBEY' , 'KAYA' , '02.11.1964')

Insert INTO Personeller (Ad, Soyad, DogumTarihi) VALUES ('AL�' , 'DEN�Z', '12.7.1999')

Insert INTO Personeller (Ad, Soyad, DogumTarihi) VALUES ('KEREM' , 'MEMIOGLU' , '05.3.2001')




