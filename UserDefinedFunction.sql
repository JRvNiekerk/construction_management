USE ConstructionDB
GO

CREATE FUNCTION [udfGetInvoiceTotal]
(
    @InvoiceID int
)
RETURNS MONEY
AS
BEGIN
    DECLARE @Total money
    
    SELECT @Total = SUM([cost]) FROM InvoiceItem
    WHERE invoiceID = @InvoiceID

    RETURN @Total
END
GO
-- Test user defined function.
-- SELECT invoiceID, projectID, dbo.udfGetInvoiceTotal(invoiceID) FROM Invoice

CREATE FUNCTION [udfGetFullAddress]
(
	@LocationID int
)
RETURNS VARCHAR(70)
AS
BEGIN
	DECLARE @Address VARCHAR(70)
	SELECT @Address = l.streetAddress + ', '+ l.city + ', ' + l.province + ', ' + l.postalCode
	FROM [Location] AS l
	WHERE l.locationID = @LocationID

	RETURN @Address
END
GO

CREATE FUNCTION [udfGetTotalSubcontractor]
(
    @ContractorID int
)
RETURNS int
AS
BEGIN
    DECLARE @SubContractor int
    
    SELECT @SubContractors = count([subcontractorID]) FROM Subcontractor
    WHERE reportsTo = @SubContractor

    RETURN @SubContractors
END
GO
