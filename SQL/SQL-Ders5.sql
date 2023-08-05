--Index nedir?
/*ýndexler tablolar üzeirnde oluþturulan ve verilere daha az veri okumasý yaparak daha hýzlý eriþmeemizi saðlayan objelerdir.
*/


--index prensibi 

/*
sql serverda verilerimizi fiziksel olarak tablolarda tutuyoruz fakat arka planda sql server veriyi bir bütün halde tutumuyor bir tablo içindekiverileri önce 65 kb biyiklüðündeki extend dediðimiz mantýksal veri yapýlardýnda tutar. daha sonra her extend kendi içerisinde 8 kb'lýk page'lere bölünür.

-heap table (sýrasýz tablo)

bir tablo üzerinde tanýmlý bir index yok ise sýrasýz ise bu tabloya heap table denir

--clustered table 

--clustered table tablo üzerinde clustered index var ise bu tabloya clustered table denir.

-- CLUSTERED INDEX (VERÝNÝN TAMAMI TÜM TABLO)
--CLUSTERED INDEX TABLOYU FÝZÝKSEL OLARAK SIRALARLAR
-BÝR TABLO FÝZÝKSEL OALRAK SIRALANDIÐINDAN TABLO ÜZERÝNDE YALNIZCA BÝR TANE CLUSTERED ÝNDEX OLUÞTURULABÝLÝR.
-BÝR TABLO ÜZERÝNDE 999 TANE NON-CLUSTERED ÝNDEX OLUÞTURULABÝLÝR VE 1 TANE CLUSTERED ÝNDEX OLUÞTURULABÝLÝR.
--CLUSTERED ÝNDEXLER TABLO ÝÇERÝSÝNDE EN ÇOK SORGULANAN KOLON ÝÇÝN OLUÞTURULMALIDIR.
--CLUSTERED ÝNDEX OLARAK SEÇÝLECEK KOLONUN UNÝQE OLMASI VE AZ DEÐÝÞEN BÝR ALAN OLMASI GEREKLÝDÝR.


NON CLUSTERED INDEX 

--NON CLUSTERED ÝNDEXLER VERÝYÝ FÝZÝKSEL OLARAK DEÐÝL MANTIKSAL OLARAK SIRALARLAR
--BU ÝNDEXLER NON LEAF'LARDA VERÝNÝN KENDÝSÝ DEÐÝL NEREDE OLDUÐU BÝLGÝSÝ TUTULUR.
--HEAP ÜZERÝNDE VEYA CLUSTERED ÝNDEX ÜZERÝNDE ERÝÞÝLEBÝLÝR.
--BU ÝNDEXÝ OLUÞTURURKEN SORGUMUZUSUN KOÞULUNDA SIK KULLANDIÐIMIZ KOLONLARA OLUÞTURMAMIZ GEREKÝR.

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

insert into Personeller values ('Anýl','Kalkan',1234567890)
insert into Personeller values ('AKýn','Kalkan',1234567890)
insert into Personeller values ('Ahmet','Kalkan',1234567890)
insert into Personeller values ('ali','duru',1234567890)


alter view personelbilgileri

as
select ad,soyad from dbo.Personeller

select * from personelbilgileri

alter table personeller
drop column soyad

































