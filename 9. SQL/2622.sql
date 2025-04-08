SELECT cust.name
FROM customers cust
JOIN legal_person lp ON cust.id = lp.id_customers;