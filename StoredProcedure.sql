USE ConstructionDB
GO

CREATE PROCEDURE DeclinedProject @projectStatus NVARCHAR(255)
AS

BEGIN TRY 
BEGIN TRANSACTION deleteDeclined
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
COMMIT TRANSACTION deleteDeclined
END TRY
BEGIN CATCH
	IF(@@TRANCOUNT > 0)
	BEGIN
			ROLLBACK TRANSACTION deleteDeclined
	END
END CATCH