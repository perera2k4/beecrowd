SELECT lr.name, ROUND(lr.omega * 1.618, 3) AS "Fator N"
FROM life_registry lr
JOIN dimensions d ON lr.dimensions_id = d.id
WHERE lr.name LIKE 'Richard%' AND d.name IN ('C774', 'C875')
ORDER BY lr.omega;