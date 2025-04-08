SELECT prod.name AS name, prov.name AS name
FROM products prod
JOIN providers prov ON prod.id_providers = prov.id
WHERE prov.name = 'Ajax SA';