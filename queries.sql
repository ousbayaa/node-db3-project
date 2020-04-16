-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT p.ID, p.ProductName, c.CategoryName
FROM Product AS p
JOIN Category AS c 
    ON p.CategoryID = c.ID;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT  o.ID, s.CompanyName
FROM [Order] as o
JOIN Shipper as s
    ON o.ShipvVa=s.ID
WHERE o.OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT ProductName, Quantity 
FROM OrderDetail AS od
Join Product AS p
    ON od.ProductID=p.ID
WHERE od.OrderID='10251'
ORDER BY ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.ID AS OrderID, c.CompanyName, e.LastName AS EmployeeLastName
FROM [order] AS o
JOIN customer AS c 
    ON o.customerid = c.ID
JOIN employee AS e 
    ON o.employeeid= e.ID;