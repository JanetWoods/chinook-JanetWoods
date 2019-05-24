-- 22 Provide a query that shows the total sales per country.

SELECT sum(i.Total), i.BillingCountry
from Invoice i
GROUP by i.BillingCountry