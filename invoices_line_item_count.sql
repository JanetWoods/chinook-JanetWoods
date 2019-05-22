--17 Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT COUNT(L.InvoiceLineId) LineItems
from Invoice i
JOIN InvoiceLine L ON L.InvoiceId = I.InvoiceId
GROUP by i.InvoiceId