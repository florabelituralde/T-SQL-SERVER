/*
Class:			ISTA 420 SQL and Application Development
Student:		Florabel Ituralde
Instructor:		Christine Lee
Date:			07/08/2020
Description:	This is to create a new table from the TSQLV4 database.
Revised:
Revised by:
Revision:
*/
USE TSQLV4;

DROP TABLE IF EXISTS dbo.Employees;

CREATE TABLE dbo.Employees
(
  empid		INT			NOT NULL,
  firstname	VARCHAR(30)	NOT NULL,
  lastname	VARCHAR(30)	NOT NULL,
  hiredate	DATE		NOT NULL,
  mgrid		INT			NULL,
  ssn		VARCHAR(20)	NOT NULL,
  salary	MONEY		NOT NULL
);

ALTER TABLE dbo.Employees
	ADD CONSTRAINT PK_Employees
	PRIMARY KEY(empid);