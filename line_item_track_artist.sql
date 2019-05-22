--13 Provide a query that includes the purchased track name AND artist name with each invoice line item.


SELECT i.InvoiceId invoice, il.InvoiceLineId lineItem, t.Name Track,  a.Name Artist
from InvoiceLine il
join invoice i on i.InvoiceId = il.InvoiceId
join Track t on il.TrackId = t.TrackId
join album b on t.AlbumId = b.AlbumId
join Artist a on b.ArtistId = a.ArtistId
ORDER BY il.InvoiceId, InvoiceLineId