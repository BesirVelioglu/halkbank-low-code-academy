--Index nedir?
/*�ndexler tablolar �zeirnde olu�turulan ve verilere daha az veri okumas� yaparak daha h�zl� eri�meemizi sa�layan objelerdir.
*/


--index prensibi 

/*
sql serverda verilerimizi fiziksel olarak tablolarda tutuyoruz fakat arka planda sql server veriyi bir b�t�n halde tutumuyor bir tablo i�indekiverileri �nce 65 kb biyikl���ndeki extend dedi�imiz mant�ksal veri yap�lard�nda tutar. daha sonra her extend kendi i�erisinde 8 kb'l�k page'lere b�l�n�r.

-heap table (s�ras�z tablo)

bir tablo �zerinde tan�ml� bir index yok ise s�ras�z ise bu tabloya heap table denir

--clustered table 

--clustered table tablo �zerinde clustered index var ise bu tabloya clustered table denir.

-- CLUSTERED INDEX (VER�N�N TAMAMI T�M TABLO)
--CLUSTERED INDEX TABLOYU F�Z�KSEL OLARAK SIRALARLAR
-B�R TABLO F�Z�KSEL OALRAK SIRALANDI�INDAN TABLO �ZER�NDE YALNIZCA B�R TANE CLUSTERED �NDEX OLU�TURULAB�L�R.
-B�R TABLO �ZER�NDE 999 TANE NON-CLUSTERED �NDEX OLU�TURULAB�L�R VE 1 TANE CLUSTERED �NDEX OLU�TURULAB�L�R.
--CLUSTERED �NDEXLER TABLO ��ER�S�NDE EN �OK SORGULANAN KOLON ���N OLU�TURULMALIDIR.
--CLUSTERED �NDEX OLARAK SE��LECEK KOLONUN UN�QE OLMASI VE AZ DE���EN B�R ALAN OLMASI GEREKL�D�R.


NON CLUSTERED INDEX 

--NON CLUSTERED �NDEXLER VER�Y� F�Z�KSEL OLARAK DE��L MANTIKSAL OLARAK SIRALARLAR
--BU �NDEXLER NON LEAF'LARDA VER�N�N KEND�S� DE��L NEREDE OLDU�U B�LG�S� TUTULUR.
--HEAP �ZER�NDE VEYA CLUSTERED �NDEX �ZER�NDE ER���LEB�L�R.
--BU �NDEX� OLU�TURURKEN SORGUMUZUSUN KO�ULUNDA SIK KULLANDI�IMIZ KOLONLARA OLU�TURMAMIZ GEREK�R.

*/
SET STATISTICS TIME,IO ON

SELECT * FROM PRODUCTION.PRODUCT WHERE PRODUCTID=3



use SILIKONAKADEMI

drop table if exists Personeller
create table Personeller
(
Ad nvarchar(100),
Soyad Nvarchar(100),
Tcno int 
)

select * from Personeller

insert into Personeller values ('An�l','Kalkan',1234567890)
insert into Personeller values ('AK�n','Kalkan',1234567890)
insert into Personeller values ('Ahmet','Kalkan',1234567890)
insert into Personeller values ('ali','duru',1234567890)


alter view personelbilgileri

as
select ad,soyad from dbo.Personeller

select * from personelbilgileri

alter table personeller
drop column soyad

































