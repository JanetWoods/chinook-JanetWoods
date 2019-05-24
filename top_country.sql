-- 23 Which country's customers spent the most?

SELECT TOP 1
 i.BillingCountry, sum(i.Total)
from Invoice i
GROUP BY I.BillingCountry
ORDER BY sum(i.Total) DESC