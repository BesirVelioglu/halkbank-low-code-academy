/*
create database databaseadý

create database tablo adý 
(
kolon1 veritipi ,
kolon2 veritipi,
kolon3 veritipi,
...
..
...


)

insert into tabloadý(kolonadý) values(deger)

update tabloadý set=deger where 

delete from tabloadý where 


use AdventureWorks2017
go
select ProductID,Name,ListPrice,
case 
when color='red' then 'Kýrmýzý'
when Color='black' then 'siyah'
when Color='blue' then 'Mavi'
when color is null then 'renksiz'
else 'diðer'
end as Renk,
from production.Product



select BusinessEntityID,JobTitle,Gender,
case 
when Gender='M' then 'Erkek'
When Gender='F' then 'Kadýn'
end as CINSIYET

from HumanResources.Employee

SELECT ProductID,Name,Color FROM Production.Product
*/





select * from sys.databases 

--id'si 1 ile 4 arasýnda olan database'ler system database'leridir.



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

select firstname+' '+lastName As 'Calisan Ad Soyadý',* from person.person

select 'AdSoyad '+firstname+' '+lastname from person.person


create database personelDb

create table PersonelInfo
(
PerNo int ,
PersonelAdý Varchar(100),
PersonelSoyad varchar(100),
Maas int 
)
select * from PersonelInfo

insert into PersonelInfo(PerNo,PersonelAdý,PersonelSoyad,Maas) values (1,'Ali','Duru',2500)
insert into PersonelInfo(PerNo,PersonelAdý,PersonelSoyad,Maas) values (2,'Huseyin','Ayaz',3000)
insert into personelInfo(Perno,PersonelAdý,PersonelSoyad,Maas) values (3,'Hasan','Durmaz',3300)

--	Aggregate Function

--sum :toplama
--avg :ortalama
--count : kaç adet olduðunu gösterir
--min : Minimum deðeri gösterir
--max : Maximum deðeri gösterir.

--use AdventureWorks2017
--go
--select * from Production.Product

--select 
--sum(Listprice) as Toplam,
--Avg(ListPrice) as Ortalama,
--Min(ListPrice) as MinimumPrice,
--Max(Listprice) as MaximumListPrice,
--count(ListPrice) as ToplamSatýrSayýsý
--from production.product

select ProductID,
sum(OrderQty) as SatisSayýsý,
count(*) as IslemSayýsý
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
