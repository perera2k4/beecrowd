SELECT mov.id, mov.name
FROM movies mov
JOIN prices pric ON mov.id_prices = pric.id
WHERE pric.value < 2.00;