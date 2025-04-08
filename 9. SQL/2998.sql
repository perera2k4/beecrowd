WITH RECURSIVE
    lucros_acumulados AS (
        SELECT
            c.id AS id_cliente,
            c.name AS nome_cliente,
            c.investment AS valor_investido,
            SUM(o.profit) OVER (
                PARTITION BY o.client_id
                ORDER BY o.month
            ) AS lucro_acumulado,
            o.month AS mes_operacao
        FROM
            clients c
            JOIN operations o ON c.id = o.client_id
        ORDER BY
            c.id ASC,
            o.month ASC
    ),
    retorno_ordenado AS (
        SELECT
            nome_cliente,
            valor_investido,
            mes_operacao AS mes_retorno,
            (lucro_acumulado - valor_investido) AS retorno,
            ROW_NUMBER() OVER (
                PARTITION BY id_cliente
                ORDER BY mes_operacao ASC
            ) AS numero_linha
        FROM
            lucros_acumulados
        WHERE
            lucro_acumulado >= valor_investido
    )
SELECT
    nome_cliente,
    valor_investido,
    mes_retorno,
    retorno
FROM
    retorno_ordenado
WHERE
    numero_linha = 1
ORDER BY
    retorno DESC;