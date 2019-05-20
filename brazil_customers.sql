-- brazil_customers.sql: Provide a query only showing the Customers from Brazil.

SELECT c.FirstName + '' + c.LastName FullName, c.CustomerId, c.Country
from Customer c
where c.Country = 'Brazil'