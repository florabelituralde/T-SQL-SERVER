SELECT ContactTitle, Contactname, CompanyName, Address, City, Region, PostalCode, Country
FROM dbo.Customers
WHERE ContactTitle = 'Sales Representative';