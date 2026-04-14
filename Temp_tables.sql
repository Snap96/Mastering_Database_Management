CREATE TABLE [AdventureWorks2019].[sales].[storenew](
	store_id INT PRIMARY KEY IDENTITY (1,1),
	sales INT
)

CREATE TABLE [AdventureWorks2019].[sales].[visits](
    visit_id INT PRIMARY KEY IDENTITY (1,1),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    visited_at DATETIME,
    phone VARCHAR(20),
    store_id INT NOT NULL, 
    FOREIGN KEY(store_id) REFERENCES sales.storenew(store_id)
);

ALTER TABLE [AdventureWorks2019].[sales].[storenew] ADD PRIMARY KEY (store_id);
ALTER TABLE [AdventureWorks2019].[sales].[storenew] ADD CONSTRAINT 1,1 PRIMARY KEY (store_id);

ALTER TABLE [AdventureWorks2019].[sales].[storenew]
ADD CONSTRAINT PK_storenew_storeid PRIMARY KEY (store_id);

SELECT * FROM [AdventureWorks2019].[sales].[visits]

SELECT BusinessEntityID, firstname, lastname, Title
INTO #TempPersonTable
FROM [Person].[Person]
WHERE Title = 'mr.'

SELECT BusinessEntityID, firstname, lastname, Title
FROM [Person].[Person]
WHERE Title = 'mr.' OR Title = 'ms.'

SELECT * FROM #TempPersonTable

DROP TABLE #TempPersonTable;

CREATE TABLE #TempPersonTable(
	businessentityID INT,
	firstname NVARCHAR(50),
	lastname NVARCHAR(50),
	title NVARCHAR(50)
);

INSERT INTO #TempPersonTable
SELECT businessentityID, firstname, lastname, Title
FROM [Person].[Person]
WHERE title = 'mr.'

SELECT * FROM #TempPersonTable