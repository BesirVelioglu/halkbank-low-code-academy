/*
use SILIKONAKADEMI
go
CREATE TABLE Personeller
(
PerNo int ,
Ad Varchar(100),
Soyad varchar(100),

)

select PerNo from Personeller
select * from personeller

select * from person.person where firstName='Jossef'
select * from person.person where firstname='Jossef' and middlename='H'

select * from person.person where BusinessEntityId=32 or BusinessEntityId=33 or BusinessEntityId=34

select * from person.person where BusinessEntityId in(32,33,34)

Select * from Person.person where FirstName like '%D%'
select * from person.person where firstname not like '%d%'

select * from Personeller

insert into Personeller(PerNo,Ad,Soyad) Values (1,'An�l','Kalkan')

select * from Personeller
update Personeller set Ad='Ak�n' where Ad='An�l'

select * from Personeller

delete from Personeller where Perno=1



select 
case
when Color='red' then 'K�rm�z�'
when Color='Blues' then 'Mavi'
when Color='Black' then 'Siyah'
when Color='Silver' then 'Di�er'
end as 'Renk',color,*
 from production.product


 select 
 case 
 when gender='M' then 'Erkek'
 when gender='F' then 'Kad�n'
 end as 'Cinsiyet',BusinessEntityID,JobTitle,BirthDate
from HumanResources.Employee

 */

 --Temel gruplama fonksiyonlar�(aggregate funciton)

 --max
 --min
 --count
 --avg
 --sum
 --select * from production.product
 select min(ListPrice) as EnUcuzUrun from production.product
 select max(ListPrice) as EnPahal�Urun from Production.product
 select avg(Listprice) as OrtalamaFiyat from production.Product
 Select count(Listprice) as Adet from production.product

--join : iki veri k�mseini birle�tirme i�in kullan�lan i�lemdir
--join : iki tablo aras�nda ortak bir alan olmal�

--1 tablolar� belirle :
--2 tablolardaki ortak alanlar� bul.
--3 kolon listesini belirliyoruz.
/*
select tablo1.kolonad�,tablo1.kolonad�,tablo2.kolonad�
from tablo1 inner join tablo2 on tablo1.col=tablo2.col.
*/
/*
select BusinessEntityID,JobTitle,Gender,BirthDate from HumanResources.Employee

select BusinessEntityID,FirstName,LastName from Person.Person

select e.BusinessEntityID,p.FirstName,p.LastName,ea.EmailAddress from HumanResources.Employee as e
inner join person.Person as p
on e.BusinessEntityID=p.BusinessEntityID
inner join person.EmailAddress as ea
on ea.BusinessEntityID=e.BusinessEntityID
order by BusinessEntityID asc
*/

select * from person.EmailAddress

select *from Person.Person 

select p.FirstName,p.LastName,ea.EmailAddress from person.EmailAddress ea
inner join person.Person p on p.BusinessEntityID=ea.BusinessEntityID


select * from Sales.SalesOrderDetail
select * from production.product

select p.ProductID,p.Name,p.Color,p.ListPrice,sod.ProductID from sales.SalesOrderDetail sod
inner join production.Product p 
on sod.ProductID=p.ProductID

select p.ProductID,p.Name,p.Color,p.ListPrice,sod.ProductID from sales.SalesOrderDetail sod
inner join production.Product p 
on sod.ProductID=p.ProductID



select top 10 * from Person.Person
order by 1 desc


select top 10 * from person.Person order by BusinessEntityID desc

select p.BusinessEntityID,p.FirstName,p.LastName,ea.EmailAddress 
from person.Person p 
inner join person.EmailAddress ea on p.BusinessEntityID=ea.BusinessEntityID
order by BusinessEntityID desc

select * from person.EmailAddress

select * from person.Person where FirstName ='bu�rahan'
select * from person.Person where FirstName ='an�l'

select p.BusinessEntityID,p.FirstName,p.LastName,ea.EmailAddress
from person.Person p
right join person.EmailAddress ea
on p.BusinessEntityID=ea.BusinessEntityID
where p.FirstName='an�l'


select * from person.EmailAddress where BusinessEntityID=1
select * from person.Person where FirstName ='an�l'


select * from person.Person p
right join person.EmailAddress ea 
on p.BusinessEntityID=ea.BusinessEntityID
where FirstName='Bu�rahan'


select * from       
person.EmailAddress ea
 join Person.Person p 
on ea.BusinessEntityID=p.BusinessEntityID
where FirstName='Bu�rahan'
and 




select *from person.Person p
left join person.EmailAddress ea
on p.BusinessEntityID=ea.BusinessEntityID
where EmailAddress is null


select * from person.Person p
right join person.EmailAddress ea
on p.BusinessEntityID=ea.BusinessEntityID
where FirstName='bu�rahan'



select Production.Product.Name,sum(Sales.SalesOrderDetail.OrderQty) as total from production.product 
inner join Sales.SalesOrderDetail
on sales.SalesOrderDetail.ProductID=Production.Product.ProductID
group by Production.Product.Name
order by total


























