-- Selecting artist's name and count of tracks sold
SELECT a.Name AS ArtistName, COUNT(ii.TrackId) AS TracksSold
FROM invoice_items ii
-- Joining tables to retrieve necessary information
JOIN tracks t ON ii.TrackId = t.TrackId
JOIN albums al ON t.AlbumId = al.AlbumId
JOIN artists a ON al.ArtistId = a.ArtistId
-- Grouping results by artist's ID
GROUP BY a.ArtistId
-- Ordering the result by the count of tracks sold in descending order
ORDER BY TracksSold DESC
-- Limiting the result to the top 5 artists with the highest number of tracks sold
LIMIT 5;