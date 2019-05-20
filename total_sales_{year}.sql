--  What are the respective total sales for each of those years?
SELECT year(i.InvoiceDate) yr, SUM(L.Quantity) Sales
from Invoice i
JOIN InvoiceLine l ON L.InvoiceId = I.InvoiceId
WHERE (YEAR(i.InvoiceDate)) = '2009'
OR
(YEAR(i.InvoiceDate)) = '2011'
GROUP BY (YEAR(i.InvoiceDate))