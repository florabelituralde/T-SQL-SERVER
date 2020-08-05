/*
Class:        ISTA 420 SQL and Application Development
Student:      Awesome Student
Instructor:   Christine Lee
Date:         07/08/2020
Description:  This query returns the records for each employee id and year and the number of orders processed for that id.
Revised:      
Revised by:   
Revision:     
*/

USE TSQLV4
select empid, YEAR(orderdate) as orderyear, COUNT(*) as numorders
from Sales.Orders
WHERE custid = 71
GROUP BY empid, YEAR(orderdate)
HAVING COUNT(*) > 1
ORDER BY empid, orderyear;
