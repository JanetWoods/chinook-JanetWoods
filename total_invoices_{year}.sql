--  How many Invoices were there in 2009 and 2011?

SELECT year(i.InvoiceDate) yr, count(i.InvoiceId)
from Invoice i
WHERE (YEAR(i.InvoiceDate)) = '2009'
OR
(YEAR(i.InvoiceDate)) = '2011'
GROUP BY (YEAR(i.InvoiceDate))