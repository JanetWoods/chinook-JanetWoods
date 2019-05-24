-- 21 Provide a query that shows the count of customers assigned to each sales agent.

SELECT e.LastName + ' ' + e.FirstName RepName,  count(c.CustomerId)
from Employee e
join Customer c on c.SupportRepId = e.EmployeeId
GROUP by e.EmployeeId, e.LastName + ' ' + e.FirstName