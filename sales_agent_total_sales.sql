-- 18 Provide a query that shows total sales made by each sales agent.
SELECT e.EmployeeId,  sum(i.Total) Sales
from Employee E
JOIN Customer c on c.SupportRepId = e.EmployeeId
join Invoice i on i.CustomerId = c.CustomerId
GROUP by e.EmployeeId
