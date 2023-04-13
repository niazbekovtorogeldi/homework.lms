select distinct City from Customers;--1
SELECT * FROM Employees where BirthDate between '1950-1-1' and '1960-1-1';--2
SELECT SupplierName , Country from Suppliers where 	Country in ('France');
SELECT CustomerName,Address,Country from Customers where CustomerName like 'A%'  and Country not in ('Spain');
SELECT *, PostalCode from Customers where PostalCode like '';
select * from Customers   where City in ('London') limit 2 ;
SELECT 	LastName,FirstName from Employees where  FirstName like '____';
select Country, count(*) from  Suppliers group by Country;
SELECT Country, count(*) from Suppliers group by Country having count(*)=1  order by Country asc;
select CategoryName, Unit*Price from Products join Categories c on Products.ProductID=c.CategoryID group by CategoryName;
SELECT Products.ProductName, MIN(Products.Price) as LowestPrice FROM Products INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID WHERE Categories.CategoryID IN (6,8) GROUP BY Products.ProductName;
SELECT s.SupplierName,* from Products join Suppliers s on Products.ProductID=s.SupplierID;
SELECT SupplierName, count(*) from Products join  Suppliers s on Products.SupplierId=s.SupplierID group by SupplierName;
SELECT c.CustomerName, e.FirstName, s.ShipperName FROM Orders join Customers c on Orders.CustomerID=c.CustomerID join Employees e on Orders.EmployeeID=e.EmployeeID join Shippers s on Orders.ShipperID = s.ShipperID;
SELECT e.FirstName, count(*) FROM Customers join Orders o on Customers.CustomerID=o.CustomerID join Employees e on o.EmployeeID =e.EmployeeID group by e.FirstName;