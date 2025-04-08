SELECT prod.id, prod.name
FROM products prod
JOIN categories cat ON prod.id_categories = cat.id
WHERE cat.name LIKE 'super%';