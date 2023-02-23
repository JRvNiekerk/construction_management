CREATE VIEW PendingProjects 
AS
SELECT pj.projectName, pj.ProjectBudget, pti.permitName, pti.approverName
FROM Project as pj INNER JOIN Permit as pt ON pj.projectID=pt.projectID INNER JOIN PermitInfo as pti ON pti.permitInfoID=pt.permitInfoID
WHERE pj.projectStatus='pending';

CREATE VIEW InvoiceSummary 
AS
SELECT i.InvoiceID, p.ProjectName, c.clientName, c.clientSurname, dbo.udfGetInvoiceTotal(i.invoiceID) AS InvoiceTotal
FROM Invoice AS i INNER JOIN Project AS p ON i.projectID = p.projectID INNER JOIN Client AS c ON p.clientID = c.clientID

-- Select contractors that are not assigned to a project
CREATE VIEW UnassignedContractors 
AS
SELECT c.ContractorName, c.ContractorSurname 
FROM Contractor AS c FULL OUTER JOIN Project AS p ON p.contractorID = c.contractorID 
WHERE c.contractorID IS NULL OR p.contractorID IS NULL

-- Select projects without permits
CREATE VIEW SuspiciousProjects AS
SELECT pj.ProjectID, pj.ProjectName, pj.projectStatus
FROM Project AS pj FULL OUTER JOIN Permit AS pt ON pj.projectID=pt.projectID
WHERE pt.projectID IS NULL OR pj.projectID IS NULL

CREATE VIEW ProjectDetails
AS
SELECT p.ProjectID, p.ProjectName, (c.ClientName + ' ' + c.ClientSurname) AS Client, c.ClientEmailAdress, p.ProjectStatus, dbo.udfGetFullAddress(p.locationID) AS FullAddress
FROM Project AS p INNER JOIN Client AS c ON p.clientID = c.clientID
