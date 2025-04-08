SELECT cat.name, SUM(prod.amount)
FROM products prod
JOIN categories cat ON prod.id_categories = cat.id
GROUP BY cat.name
ORDER BY cat.name;