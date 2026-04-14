/*
	SELECT expressions
	FROM table_name
	[WHERE clause]
	[GROUP BY clause]
	[HAVING clause]
	[ORDER BY clause]
*/

/*
	Specify Columns Name
	SELECT column1, column2, columnN
	FROM table_name

	List All Columns using
	SELECT *
	FROM table_name

	Column Order does not matter
	SELECT column3, column1, column6
	FROM table_name
*/

USE AdventureWorks2019;

SELECT * FROM person.address; 

SELECT addressid, city, modifieddate
FROM [Person].[Address];

SELECT TOP 10 *
FROM [Person].[Address];