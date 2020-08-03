USE Northwind

SELECT OrderID, OrderDate, ShippedDate, Difference
FROM Orders;

ALTER TABLE Orders 
ADD Difference as DATEDIFF(DAY, OrderDate, ShippedDate) PERSISTED