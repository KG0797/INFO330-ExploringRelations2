-- Find tracks (id, name and composer) that are part of a line in an invoice.

SELECT tracks.TrackId, tracks.Name, tracks.Composer
FROM tracks
JOIN invoice_items ON tracks.trackId = invoice_items.TrackId;
