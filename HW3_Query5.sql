-- Selecting TrackId and Name from tracks
SELECT t.TrackId, t.Name
FROM tracks t
-- Filtering out tracks whose GenreId is not in the top 5 genres based on total track duration
WHERE t.GenreId NOT IN (
    -- Subquery to find the top 5 genres based on total track duration
    SELECT g.GenreId
    FROM genres g
    JOIN tracks t ON g.GenreId = t.GenreId
    -- Grouping tracks by GenreId
    GROUP BY g.GenreId
    -- Ordering genres by total track duration in descending order
    ORDER BY SUM(t.Milliseconds) DESC
    -- Limiting the result to the top 5 genres
    LIMIT 5
);