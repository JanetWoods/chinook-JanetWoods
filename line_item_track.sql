-- Provide a query that includes the purchased track name with each invoice line item.
select il.InvoiceLineId, t.Name Track_Name
from InvoiceLine il
join Track t on t.TrackId = il.TrackId
ORDER by il.InvoiceLineId