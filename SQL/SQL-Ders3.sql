/*
create database databasead�

create database tablo ad� 
(
kolon1 veritipi ,
kolon2 veritipi,
kolon3 veritipi,
...
..
...


)

insert into tabload�(kolonad�) values(deger)

update tabload� set=deger where 

delete from tabload� where 


use AdventureWorks2017
go
select ProductID,Name,ListPrice,
case 
when color='red' then 'K�rm�z�'
when Color='black' then 'siyah'
when Color='blue' then 'Mavi'
when color is null then 'renksiz'
else 'di�er'
end as Renk,
from production.Product



select BusinessEntityID,JobTitle,Gender,
case 
when Gender='M' then 'Erkek'
When Gender='F' then 'Kad�n'
end as CINSIYET

from HumanResources.Employee

SELECT ProductID,Name,Color FROM Production.Product
*/





select * from sys.databases 

--id'si 1 ile 4 aras�nda olan database'ler system database'leridir.



select name, 
case 
when name='master' then 'system database'
when name='msdb' then 'system database'
when name='model' then 'system database'
when name='tempdb' then 'system database'
when name='AdventureWorks2017' then 'user database'
end as Info
from sys.databases

use master
go
select 'Create Database '+QUOTENAME (name) from sys.databases

SELECT *
FROM person.person

select firstName+space(1)+LastName as CalisanAdSoyad from person.person

select firstname+' '+lastName As 'Calisan Ad Soyad�',* from person.person

select 'AdSoyad '+firstname+' '+lastname from person.person


create database personelDb

create table PersonelInfo
(
PerNo int ,
PersonelAd� Varchar(100),
PersonelSoyad varchar(100),
Maas int 
)
select * from PersonelInfo

insert into PersonelInfo(PerNo,PersonelAd�,PersonelSoyad,Maas) values (1,'Ali','Duru',2500)
insert into PersonelInfo(PerNo,PersonelAd�,PersonelSoyad,Maas) values (2,'Huseyin','Ayaz',3000)
insert into personelInfo(Perno,PersonelAd�,PersonelSoyad,Maas) values (3,'Hasan','Durmaz',3300)

--	Aggregate Function

--sum :toplama
--avg :ortalama
--count : ka� adet oldu�unu g�sterir
--min : Minimum de�eri g�sterir
--max : Maximum de�eri g�sterir.

--use AdventureWorks2017
--go
--select * from Production.Product

--select 
--sum(Listprice) as Toplam,
--Avg(ListPrice) as Ortalama,
--Min(ListPrice) as MinimumPrice,
--Max(Listprice) as MaximumListPrice,
--count(ListPrice) as ToplamSat�rSay�s�
--from production.product

select ProductID,
sum(OrderQty) as SatisSay�s�,
count(*) as IslemSay�s�
from Sales.SalesOrderDetail
group by ProductID

select color, 
sum(ListPrice) as Toplam
 from production.product
group by color
having sum(ListPrice)<1000



select 
LastName, count()  as adet
from person.person
group by LastName 
having count(*)<500
order by adet desc

select productID,Name,Color,ListPrice from production.product where listprice!=0


select * from sales.salesorderDetail
select * from production.product 

select * from sales.salesorderDetail

select productId,Name,Color,ListPrice 
from production.product
where productId in
(select productId from sales.salesorderDetail)
and listprice<100

select productId,Name,Color,ListPrice 
from production.product
where productId in
(1,3,5)
and listprice<100



select * from person.person
