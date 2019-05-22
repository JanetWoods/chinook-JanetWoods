-- 14 Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT i.BillingCountry, count(i.InvoiceId) InvoicePerCountry
from Invoice i
GROUP by i.BillingCountry
