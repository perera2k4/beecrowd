SELECT name, customers_number
FROM (
    SELECT name, customers_number
    FROM lawyers
    ORDER BY customers_number DESC
    LIMIT 1
) AS top_lawyer

UNION ALL

SELECT name, customers_number
FROM (
    SELECT name, customers_number
    FROM lawyers
    ORDER BY customers_number ASC
    LIMIT 1
) AS bottom_lawyer

UNION ALL

SELECT 'Average' AS name, ROUND(AVG(customers_number)) AS customers_number
FROM lawyers;