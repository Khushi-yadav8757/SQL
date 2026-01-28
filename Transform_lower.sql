SELECT 
first_name,country,
CONCAT(first_name,'-',country) as name_country,
LOWER(first_name) AS low_name
FROM customers
