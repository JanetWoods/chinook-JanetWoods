-- 20 Which sales agent made the most in sales over all?

    SELECT TOP 1
    e.EmployeeId, e.LastName, e.FirstName, sum(i.Total) as tot, (year(i.InvoiceDate))
    from Employee e
    join Customer c on c.SupportRepId = e.EmployeeId
    join Invoice i on i.CustomerId = c.CustomerId
    group BY e.EmployeeId, e.LastName, e.FirstName, (year(i.InvoiceDate))
    ORDER BY SUM(i.Total) DESC

    