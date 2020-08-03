/*
Class:			ISTA 420 SQL and Application Development
Student:		Florabel Ituralde	
Instructor:		Christine Lee
Date:			07/15/2020
Description:	EX 2C - SQL - Single Table Queries
Revised:
Revised by:
Revision:
*/

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
