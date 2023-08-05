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

insert into Personeller(PerNo,Ad,Soyad) Values (1,'Anýl','Kalkan')

select * from Personeller
update Personeller set Ad='Akýn' where Ad='Anýl'

select * from Personeller

delete from Personeller where Perno=1



select 
case
when Color='red' then 'Kýrmýzý'
when Color='Blues' then 'Mavi'
when Color='Black' then 'Siyah'
when Color='Silver' then 'Diðer'
end as 'Renk',color,*
 from production.product


 select 
 case 
 when gender='M' then 'Erkek'
 when gender='F' then 'Kadýn'
 end as 'Cinsiyet',BusinessEntityID,JobTitle,BirthDate
from HumanResources.Employee

 */

 --Temel gruplama fonksiyonlarý(aggregate funciton)

 --max
 --min
 --count
 --avg
 --sum
 --select * from production.product
 select min(ListPrice) as EnUcuzUrun from production.product
 select max(ListPrice) as EnPahalýUrun from Production.product
 select avg(Listprice) as OrtalamaFiyat from production.Product
 Select count(Listprice) as Adet from production.product

--join : iki veri kümseini birleþtirme için kullanýlan iþlemdir
--join : iki tablo arasýnda ortak bir alan olmalý

--1 tablolarý belirle :
--2 tablolardaki ortak alanlarý bul.
--3 kolon listesini belirliyoruz.
/*
select tablo1.kolonadý,tablo1.kolonadý,tablo2.kolonadý
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

select * from person.Person where FirstName ='buðrahan'
select * from person.Person where FirstName ='anýl'

select p.BusinessEntityID,p.FirstName,p.LastName,ea.EmailAddress
from person.Person p
right join person.EmailAddress ea
on p.BusinessEntityID=ea.BusinessEntityID
where p.FirstName='anýl'


select * from person.EmailAddress where BusinessEntityID=1
select * from person.Person where FirstName ='anýl'


select * from person.Person p
right join person.EmailAddress ea 
on p.BusinessEntityID=ea.BusinessEntityID
where FirstName='Buðrahan'


select * from       
person.EmailAddress ea
 join Person.Person p 
on ea.BusinessEntityID=p.BusinessEntityID
where FirstName='Buðrahan'
and 




select *from person.Person p
left join person.EmailAddress ea
on p.BusinessEntityID=ea.BusinessEntityID
where EmailAddress is null


select * from person.Person p
right join person.EmailAddress ea
on p.BusinessEntityID=ea.BusinessEntityID
where FirstName='buðrahan'



select Production.Product.Name,sum(Sales.SalesOrderDetail.OrderQty) as total from production.product 
inner join Sales.SalesOrderDetail
on sales.SalesOrderDetail.ProductID=Production.Product.ProductID
group by Production.Product.Name
order by total


























