-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT tracks.Name AS TrackName, artists.Name AS ArtistName FROM invoice_items JOIN tracks, albums, artists ORDER BY InvoiceLineId;
