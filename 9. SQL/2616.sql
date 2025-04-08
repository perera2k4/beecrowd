SELECT cust.id, cust.name
FROM customers cust
LEFT JOIN locations loc ON cust.id = loc.id_customers
WHERE loc.id_customers IS NULL
ORDER BY cust.id;