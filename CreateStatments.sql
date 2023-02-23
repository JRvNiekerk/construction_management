USE master

IF EXISTS(select * from sys.databases where name='ConstructionDB')
DROP DATABASE ConstructionDB;

CREATE DATABASE ConstructionDB;
GO

USE ConstructionDB;

CREATE TABLE [Client] (
  [clientID] int IDENTITY(1001,1) PRIMARY KEY ,
  [clientName] varchar(50),
  [clientSurname] varchar(50),
  [clientMobile] varchar(12),
  [clientEmailAdress] varchar(80),
  [companyName] varchar(40)
)
GO

CREATE TABLE [Contractor] (
  [contractorID] int IDENTITY(2001,1) PRIMARY KEY  ,
  [contractorName] varchar(50),
  [contractorSurname] varchar(50)
)
GO



CREATE TABLE [Role] (
  [roleID] int IDENTITY(3001,1) PRIMARY KEY ,
  [name] varchar(20)
)
GO

CREATE TABLE [Location] (
  [locationID] int IDENTITY(4001,1) PRIMARY KEY ,
  [streetAddress] varchar(70),
  [city] varchar(50),
  [province] varchar(30),
  [postalCode] varchar(4)
)
GO

CREATE TABLE [PermitInfo] (
	[permitInfoID] int IDENTITY(12001,1) PRIMARY KEY,
	[permitName] varchar(30),
	[permitDescription] varchar(140),
	[approverName] varchar(30)
)
GO

CREATE TABLE [Supplier] (
  [supplierID] int IDENTITY(5001,1) PRIMARY KEY ,
  [supplierName] varchar(50),
  [supplierDescription] varchar(300),
  [locationID] int
)
GO

CREATE TABLE [Project] (
	[projectID] int IDENTITY(6001,1) PRIMARY KEY,
	[projectName] varchar(50),
	[projectStatus] nvarchar(255) NOT NULL CHECK ([projectStatus] IN ('approved', 'pending', 'declined', 'in_progress', 'completed')),
	[projectBudget] money,
	[projectStartDate] date,
	[projectEndDate] date,
	[locationID] int,
	[clientID] int,
	[contractorID] int,
	CONSTRAINT FK_LocationProject
		FOREIGN KEY ([locationID])
		REFERENCES [Location]([locationID]),
	CONSTRAINT FK_ClientProject
		FOREIGN KEY ([clientID])
		REFERENCES [Client]([clientID]),
	CONSTRAINT FK_ContractorProject
		FOREIGN KEY ([contractorID])
		REFERENCES [Contractor]([contractorID])
)
GO

CREATE TABLE [Permit] (
	[permitID] int IDENTITY(7001,1) PRIMARY KEY,
	[permitInfoID] int,
	[projectID] int,
	CONSTRAINT FK_ProjectPermit
		FOREIGN KEY ([projectID])
		REFERENCES [Project]([projectID]),
	CONSTRAINT FK_PermitInfo
		FOREIGN KEY ([permitInfoID])
		REFERENCES [PermitInfo]([permitInfoID])
)
GO

CREATE TABLE [Invoice] (
	[invoiceID] int IDENTITY(8001,1) PRIMARY KEY,
	[projectID] int,
	CONSTRAINT FK_ProjectInvoice
		FOREIGN KEY ([projectID])
		REFERENCES [Project]([projectID])
)
GO

CREATE TABLE [InvoiceItem] (
	[itemID] int IDENTITY(9001,1) PRIMARY KEY,
	[invoiceItem] varchar(50),
	[itemQuantity] int,
	[supplierID] int,
	[invoiceID] int,
	[cost] money,
	CONSTRAINT FK_SupplierInvoiceItem
		FOREIGN KEY ([supplierID])
		REFERENCES [Supplier]([supplierID]),
	CONSTRAINT FK_InvoiceInvoiceItem
		FOREIGN KEY ([invoiceID])
		REFERENCES [Invoice]([invoiceID])
)
GO

CREATE TABLE [Engineer] (
	[engineerID] int IDENTITY(10001,1) PRIMARY KEY,
	[engineerName] varchar(50),
	[engineerSurname] varchar(50),
	[type] nvarchar(255) NOT NULL CHECK ([type] IN ('INFRASTRUCTURE', 'STRUCTURAL', 'ENVIRONMENTAL', 'GEOTECHNICAL', 'TRANSPORTATION', 'ARCHITECTURAL')),
	[projectID] int,
	CONSTRAINT FK_ProjectEngineer
		FOREIGN KEY ([projectID])
		REFERENCES [Project]([projectID])
)
GO



CREATE TABLE [Subcontractor] (
	[subcontractorID] int IDENTITY(11001,1) PRIMARY KEY,
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
