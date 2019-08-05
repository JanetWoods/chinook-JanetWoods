--  Provide a query that shows the most purchased track of 2013.
--This one isn't right.  Close, but not quite

    select t.TrackId, T.Name track, (YEAR(V.InvoiceDate)), sum(I.Quantity) Sales
    from Invoice V
    join InvoiceLine I on V.InvoiceId = I.InvoiceId
    JOIN Track T ON I.TrackId = T.TrackId
    where  (YEAR(V.InvoiceDate)) = '2013'
    GROUP BY T.TrackId, T.Name,  (YEAR(V.InvoiceDate))

 ORDER BY Sales DESC
;