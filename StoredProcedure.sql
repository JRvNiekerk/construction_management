USE ConstructionDB
GO

CREATE PROCEDURE DeclinedProject @projectStatus NVARCHAR(255)
AS
BEGIN
	DELETE Permit
	FROM Permit
	INNER JOIN Project 
	ON Project.projectID = Permit.projectID
	WHERE projectStatus = @projectStatus;

	DELETE InvoiceItem
	FROM InvoiceItem INNER JOIN Invoice ON InvoiceItem.invoiceID=Invoice.invoiceID 
	INNER JOIN Project ON Project.projectID=Invoice.projectID
	WHERE Project.projectStatus = @projectStatus;

	DELETE Invoice
	FROM Invoice 
	INNER JOIN Project
	ON Project.projectID = Invoice.projectID
	Where projectStatus = @projectStatus;
END
GO