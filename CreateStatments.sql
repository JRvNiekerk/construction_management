USE master

IF EXISTS(select * from sys.databases where name='ConstructionDB')
DROP DATABASE ConstructionDB;

CREATE DATABASE ConstructionDB;
GO

CREATE TABLE [Contractor] (
  [contractorID] int PRIMARY KEY,
  [contractorName] varchar(50),
  [contractorSurname] varchar(50)
)
GO

CREATE TABLE [Client] (
  [clientID] int PRIMARY KEY,
  [clientName] varchar(50),
  [clientSurname] varchar(50),
  [clientMobile] varchar(10),
  [clientEmailAdress] varchar(30),
  [companyName] varchar(40)
)
GO

CREATE TABLE [Role] (
  [roleID] int PRIMARY KEY,
  [name] varchar(20)
)
GO

CREATE TABLE [Location] (
  [locationID] int PRIMARY KEY,
  [streetAddress] varchar(70),
  [city] varchar(50),
  [province] varchar(30),
  [postalCode] varchar(4)
)
GO

CREATE TABLE [Supplier] (
  [supplierID] int PRIMARY KEY,
  [supplierName] varchar(50),
  [supplierDescription] varchar(100),
  [locationID] int
)
GO

CREATE TABLE [Project] (
	[projectID] int PRIMARY KEY,
	[projectName] varchar(50),
	[projectStatus] nvarchar(255) NOT NULL CHECK ([projectStatus] IN ('approved', 'pending', 'declined', 'in_progress', 'completed')),
	[projectBudget] money,
	[projectStartDate] date,
	[projectEndDate] date,
	[locationID] int,
	[clientID] int,
	[contractorID] int,
	CONSTRAINT locationFK 
		FOREIGN KEY ([locationID])
		REFERENCES [Location]([locationID]),
	CONSTRAINT clientFK
		FOREIGN KEY ([clientID])
		REFERENCES [Client]([clientID]),
	CONSTRAINT contractorFK
		FOREIGN KEY ([contractorID])
		REFERENCES [Contractor]([contractorID])
)
GO

CREATE TABLE [Permit] (
	[permitID] int PRIMARY KEY,
	[permitName] varchar(30),
	[permitDescription] varchar(70),
	[permitDocumentLink] varchar(30),
	[approverName] varchar(30),
	[projectID] int,
	CONSTRAINT projectFK
		FOREIGN KEY ([projectID])
		REFERENCES [Project]([projectID])
)
GO

CREATE TABLE [Invoice] (
	[invoiceID] int PRIMARY KEY,
	[projectID] int,
	CONSTRAINT projectFK
		FOREIGN KEY ([projectID])
		REFERENCES [Project]([projectID])
)
GO

CREATE TABLE [InvoiceItem] (
	[itemID] int PRIMARY KEY,
	[invoiceItem] varchar(50),
	[itemQuantity] int,
	[supplierID] int,
	[invoiceID] int,
	[cost] money,
	CONSTRAINT supplierFK
		FOREIGN KEY ([supplierID])
		REFERENCES [Supplier]([supplierID]),
	CONSTRAINT invoiceFK
		FOREIGN KEY ([invoiceID])
		REFERENCES [Invoice]([invoiceID])
)
GO

CREATE TABLE [Engineer] (
	[engineerID] int PRIMARY KEY,
	[engineerName] varchar(50),
	[engineerSurname] varchar(50),
	[type] nvarchar(255) NOT NULL CHECK ([type] IN ('INFRASTRUCTURE', 'STRUCTURAL', 'ENVIRONMENTAL', 'GEOTECHNICAL', 'TRANSPORTATION')),
	[projectID] int,
	CONSTRAINT projectFK
		FOREIGN KEY ([projectID])
		REFERENCES [Project]([projectID])
)
GO



CREATE TABLE [Subcontractor] (
	[subcontractorID] int PRIMARY KEY,
	[subcontractorName] varchar(50),
	[subcontractorSurname] varchar(50),
	[hoursWorked] int,
	[role] int,
	[reportsTo] int,
	CONSTRAINT roleFK
		FOREIGN KEY ([role])
		REFERENCES [Role]([roleID]),
	CONSTRAINT reportsToFK
		FOREIGN KEY ([reportsTo])
		REFERENCES [Contractor]([contractorID])
)
GO
