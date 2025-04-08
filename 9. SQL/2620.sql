SELECT cust.name, ord.id
FROM orders ord
JOIN customers cust ON ord.id_customers = cust.id
WHERE ord.orders_date BETWEEN '2016-01-01' AND '2016-06-30';