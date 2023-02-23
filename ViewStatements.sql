/*
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
	[permitName] varchar(30),
	[permitDescription] varchar(70),
	[permitDocumentLink] varchar(30),
	[approverName] varchar(30),
	[projectID] int,
	CONSTRAINT FK_ProjectPermit
		FOREIGN KEY ([projectID])
		REFERENCES [Project]([projectID])
)
GO
*/

SELECT pj.projectName, pj.ProjectBudget, pt.permitName, pt.approverName
FROM Project as pj INNER JOIN Permit as pt ON pj.projectID=pt.projectID
WHERE pj.projectStatus='pending';

