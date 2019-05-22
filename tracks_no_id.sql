-- 16 Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT t.Name Track, M.Name MediaType, a.Title AlbumName, g.Name Genre
FROM MediaType M
JOIN Track T ON T.MediaTypeId = M.MediaTypeId
JOIN Genre G ON G.GenreId = T.GenreId
JOIN Album A on a.AlbumId = t.AlbumId