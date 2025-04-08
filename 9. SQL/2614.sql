SELECT cust.name, rent.rentals_date
FROM rentals rent
JOIN customers cust ON rent.id_customers = cust.id
WHERE rent.rentals_date BETWEEN '2016-09-01' AND '2016-09-30';