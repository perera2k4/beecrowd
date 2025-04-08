SELECT prod.name
FROM products prod
JOIN providers prov ON prod.id_providers = prov.id
WHERE prod.amount BETWEEN 10 AND 20 AND prov.name LIKE 'P%';