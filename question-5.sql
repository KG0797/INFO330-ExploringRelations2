-- What was the most purchased track of 2013?

SELECT tracks.Name AS TrackName, COUNT(*) AS Purchases
FROM invoice_items
JOIN invoices ON invoice_items.InvoiceId = invoices.InvoiceId
JOIN tracks ON invoice_items.TrackId = tracks.TrackId
WHERE strftime('%Y', InvoiceDate) = '2013'
GROUP BY tracks.TrackId
ORDER BY Purchases DESC;

