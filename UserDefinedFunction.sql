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

CREATE FUNCTION [udfGetTotalSubcontractor]
(
    @ContractorID int
)
RETURNS int
AS
BEGIN
    DECLARE @SubContractor int
    
    SELECT @SubContractor = count([subcontractorID]) FROM Subcontractor
    WHERE reportsTo = @SubContractor

    RETURN @SubContractor
END
GO
