--  What are the respective total sales for each of those years?
SELECT sum(i.Total) TotalAmount, year(i.InvoiceDate) year FROM Invoice i
Group BY year(i.InvoiceDate)