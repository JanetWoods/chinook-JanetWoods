-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

select COUNT (ls.InvoiceId) LineItems
FROM InvoiceLine ls
JOIN INVOICE i ON i.InvoiceId = ls.InvoiceId
where ls.InvoiceId = 37