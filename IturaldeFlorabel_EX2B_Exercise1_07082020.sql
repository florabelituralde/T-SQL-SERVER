/*
Class:			ISTA 420 SQL and Application Development
Student:		Florabel Ituralde
Instructor:		Christine Lee
Date:			07/08/2020
Description:	Exercise 1 on EX2B from Assignments
Revised:
Revised by:
Revision:
*/

USE TSQLV4
SELECT orderid, orderdate, custid, empid 
FROM Sales.Orders
WHERE orderdate between '2015-06-01' and '2015-06-30';