--ODEV1
select * from Production.Product

select * from Production.Product where color='Red' or color='Blue'

select * from Sales.Customer where PersonID=683

select * from Production.Product where Name like '%Mountain%' -- baþýna ve sonuna %  koymak herhangi bir yerinde geçmesi anlamýna gelir.

select * from Production.Product where Name like '%Touring-1000%' or Name like '%Touring-2000%' 

select * from Person.Person where FirstName like 'A%'

select * from Production.Product where Name like '%Road%' and Color='Black'

select JobTitle from HumanResources.Employee 

select * from Production.Product where Name like '%Bike%' or ListPrice BETWEEN 1000 and 2000