SELECT
    p.name AS nome_produto,
    CASE
        WHEN p.type = 'A' THEN 20.0
        WHEN p.type = 'B' THEN 70.0
        ELSE 530.5
    END AS preco
FROM products p
ORDER BY preco ASC, p.id DESC;