select address_street_name, address_number, name from person
WHERE address_street_name = "Franklin Ave" 
ORDER BY address_number asc
LIMIT 1 OFFSET 2