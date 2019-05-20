-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT c.FirstName + ' ' + c.LastName CustomerName,
c.Country, e.FirstName + ' ' + e.LastName SalesRep,
i.Total, i.InvoiceId, i.InvoiceDate
FROM invoice i
join customer c on i.CustomerId = c.CustomerId
join Employee e on e.EmployeeId = c.SupportRepId