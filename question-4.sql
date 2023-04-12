-- Which sales agent made the most in sales in 2010?
SELECT employees.FirstName||' '|| employees.LastName AS SalesAgent, SUM(invoice_items.UnitPrice * invoice_items.Quantity) AS TotalSales 
FROM employees 
JOIN customers, invoices, invoice_items 
WHERE InvoiceDate LIKE '2010%' GROUP BY EmployeeId ORDER BY TotalSales 
DESC LIMIT 1;
