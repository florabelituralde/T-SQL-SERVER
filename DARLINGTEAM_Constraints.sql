DROP TABLE IF EXISTS dbo.Orders;

CREATE TABLE dbo.Orders
(
	orderid		INT			NOT NULL,
	empid		INT			NOT NULL,
	custid		VARCHAR(10)	NOT NULL,
	orderts		DATETIME2	NOT NULL,
	qty			INT			NOT NULL,
	CONSTRAINT PK_Orders
		PRIMARY KEY(orderid)
);
ALTER TABLE dbo.Orders
	ADD CONSTRAINT FK_Orders_Employees
	FOREIGN KEY (empid)
	REFERENCES dbo.Employees(empid);

ALTER TABLE dbo.Employees
	ADD CONSTRAINT CHK_Employees_salary
	CHECK (salary > 0.00);

ALTER TABLE dbo.Orders
	ADD CONSTRAINT DFT_Orders_orderts
	DEFAULT (SYSDATETIME()) FOR orderts;