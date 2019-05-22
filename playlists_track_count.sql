--15  Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resultant table.


select pl.Name PlayList, count(pt.TrackId) NumOfTracks
from Playlist pl
join PlaylistTrack pt on pt.PlaylistId = pl.PlaylistId
GROUP by pl.Name