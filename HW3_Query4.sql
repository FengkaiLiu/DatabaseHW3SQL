--the three attribute that I want to search
SELECT DISTINCT c.CustomerId, c.FirstName, c.LastName
FROM customers c
--with help from ChatGPT
JOIN invoices i ON c.CustomerId = i.CustomerId
JOIN invoice_items ii ON i.InvoiceId = ii.InvoiceId
JOIN tracks t ON ii.TrackId = t.TrackId
--give the range of what we want
WHERE t.Milliseconds > (SELECT AVG(Milliseconds) FROM tracks WHERE Milliseconds < 900000) -- 15 minutes in milliseconds
AND t.Milliseconds < 900000;
