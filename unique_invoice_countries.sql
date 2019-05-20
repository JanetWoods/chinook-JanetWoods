-- Provide a query showing a unique/distinct list of billing countries from the Invoice table.

select  DISTINCT i.BillingCountry
from Invoice i