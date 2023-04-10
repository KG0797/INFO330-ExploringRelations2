-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT employees.FirstName||' '||employees.LastName AS SalesAgentFullName, InvoiceId FROM employees JOIN customers JOIN invoices ORDER BY EmployeeId;
