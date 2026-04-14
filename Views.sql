-- What is a View?
/*
	A View in SQL Server is like a virtual table that contains data from one or multiple tables.
	It does not hold any data and does not exist physically in the database.
	Similar to a SQL table, the view name should be unique in a database.
	It contains a set of predefined SQL queries to fetch data from the database
	It can contain database tables from a single or multiple databases as well
	A view does not require any storage in a database because it does not exist physically
*/

/*
	How to create a View
		CREATE VIEW Name AS
			SELECT column1, column2.. Column N From tables
			WHERE conditions;
*/

SELECT        TOP (100) PERCENT Person.Person.Title, Person.Person.FirstName, Person.Person.LastName, Person.PersonPhone.PhoneNumber, Person.PhoneNumberType.Name AS PhoneType
FROM            Person.Person INNER JOIN
                         Person.PersonPhone ON Person.Person.BusinessEntityID = Person.PersonPhone.BusinessEntityID INNER JOIN
                         Person.PhoneNumberType ON Person.PersonPhone.PhoneNumberTypeID = Person.PhoneNumberType.PhoneNumberTypeID
WHERE        (Person.Person.Title = N'Mr.')
ORDER BY Person.Person.FirstName DESC

SELECT *
FROM	[AdventureWorks2019].[dbo].[EmployeePhoneDetail]


SELECT *
FROM	[AdventureWorks2019].[dbo].[EmployeePhoneDetail]
WHERE	PhoneType = 'Work';