-- What was the most purchased track of 2013?

SELECT tracks.Name AS TrackName, COUNT(*) AS Purchases
FROM invoice_items
JOIN invoices, tracks WHERE InvoiceDate LIKE '%2013%'
GROUP BY tracks.TrackId
ORDER BY Purchases DESC;

