--Odev3
select * from Production.Product
 
select count(ProductID) as Adet from Production.Product

select * from Sales.SalesOrderDetail

select SUM(UnitPrice) as ToplamSatis from Sales.SalesOrderDetail

select * from HumanResources.EmployeePayHistory

select AVG(Rate) as OrtalamaMaas from HumanResources.EmployeePayHistory

select * from Production.Product

select e.BusinessEntityID,p.FirstName,p.LastName,ea.EmailAddress from HumanResources.Employee as e 
inner join Person.Person as p on e.BusinessEntityID=p.BusinessEntityID inner join Person.EmailAddress
as ea on ea.BusinessEntityID=e.BusinessEntityID
order by BusinessEntityID asc










