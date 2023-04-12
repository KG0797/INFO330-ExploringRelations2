-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.

SELECT FirstName||' '|| LastName AS FullName, InvoiceId, InvoiceDate, BillingCountry 
FROM customers 
JOIN invoices
WHERE Country ='Brazil';
