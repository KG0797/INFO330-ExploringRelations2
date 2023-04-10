-- What was the most purchased track of 2013?

SELECT tracks.Name AS TrackName, artists.Name AS ArtistName, COUNT(*) AS Purchases
FROM invoice_items
JOIN invoices, tracks, albums, artists WHERE InvoiceDate LIKE '2013%'
GROUP BY TrackId
ORDER BY Purchases DESC
LIMIT 1;
