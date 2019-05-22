-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY

select i.InvoiceId, COUNT(il.InvoiceLineId) LineItems
from InvoiceLine il
join Invoice i on il.InvoiceId = i.InvoiceId
GROUP by i.InvoiceId