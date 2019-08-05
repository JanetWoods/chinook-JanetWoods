-- 23 Which country's customers spent the most?


SELECT TOP 1
    tot, country
FROM
(
select sum(i.Total) tot, i.BillingCountry country
from Invoice i
GROUP BY i.BillingCountry
)tot
order by tot desc