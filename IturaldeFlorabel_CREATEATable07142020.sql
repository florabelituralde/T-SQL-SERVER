/*
Class:			ISTA 420 SQL and Application Development
Student:		Florabel Ituralde
Instructor:		Christine Lee
Date:			07/14/2020
Description:	This is to create a new table from the TSQLV4 database.
Revised:
Revised by:
Revision:
*/

USE TSQLV4;

DROP TABLE IF EXISTS tblGender;

CREATE TABLE tblGender
(
  ID		INT			NOT NULL,
  Gender	VARCHAR(50)	NOT NULL,
  CONSTRAINT PK_ID
		PRIMARY KEY(ID)
)

ALTER TABLE dbo.tblPerson
	ADD CONSTRAINT tblPerson_GenderId_FK
	FOREIGN KEY (GenderID)
	REFERENCES dbo.tblGender(ID);
