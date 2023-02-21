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
-- SELECT invoiceID, projectID, udfGetInvoiceTotal(invoiceID) FROM Invoices