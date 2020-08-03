/*
Class:			ISTA 420 SQL and Application Development
Group:			Avg(Joes)
Instructor:		Christine Lee
Date:			07/14/2020
Description:	Exercise 1 to 9 from group activity
Revised:
Revised by:
Revision:
*/

USE TSQLV4
--EXERCISE 1
SELECT orderid, orderdate, custid, empid 
FROM Sales.Orders
WHERE orderdate between '2015-06-01' and '2015-06-30';

--EXERCISE 2
SELECT orderid, orderdate, custid, empid 
FROM Sales.Orders
WHERE orderdate = EOMONTH(orderdate);

--EXERCISE 3
SELECT empid, firstname, lastname
FROM HR.Employees
WHERE lastname LIKE '%e%e%';

--EXERCISE 4
SELECT orderid, SUM(qty*unitprice) AS totalvalue
FROM Sales.OrderDetails
GROUP BY orderid
HAVING SUM(qty*unitprice) < 10000
ORDER BY totalvalue DESC;

--EXERCISE 5
SELECT empid, lastname
FROM HR.Employees
WHERE lastname COLLATE Latin1_General_CS_AS LIKE N'[a-z]%';

--EXERCISE 6


--EXERCISE 7
SELECT TOP (3) shipcountry, AVG(freight) AS avgfreight
FROM Sales.Orders
WHERE orderdate >= '20150101' AND orderdate < '20160101'
GROUP BY shipcountry
ORDER BY avgfreight DESC;

--EXERCISE 8
SELECT custid, orderdate, orderid, ROW_NUMBER()
OVER (PARTITION BY custid ORDER BY orderdate, orderid) AS rownum
FROM Sales.Orders
ORDER BY custid, rownum;

--EXERCISE 9
SELECT empid, firstname, lastname, titleofcourtesy,
  CASE titleofcourtesy
    WHEN 'Ms.'  THEN 'Female'
    WHEN 'Mrs.' THEN 'Female'
    WHEN 'Mr.'  THEN 'Male'
    ELSE             'Unknown'
  END AS gender
FROM HR.Employees;

--EXERCISE 10
