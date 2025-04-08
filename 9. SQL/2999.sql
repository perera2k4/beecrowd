WITH RECURSIVE
    totais_venc AS (
        SELECT
            e.matr AS id_empregado,
            e.nome AS nome_empregado,
            e.lotacao AS id_departamento,
            e.lotacao_div AS id_divisao,
            SUM(COALESCE(v.valor, 0)) AS total_vencimentos
        FROM
            empregado e
            LEFT JOIN emp_venc ev ON e.matr = ev.matr
            LEFT JOIN vencimento v ON ev.cod_venc = v.cod_venc
        GROUP BY
            e.matr,
            e.nome,
            e.lotacao,
            e.lotacao_div
    ),
    totais_desc AS (
        SELECT
            e.matr AS id_empregado,
            e.nome AS nome_empregado,
            e.lotacao AS id_departamento,
            e.lotacao_div AS id_divisao,
            SUM(COALESCE(d.valor, 0)) AS total_descontos
        FROM
            empregado e
            LEFT JOIN emp_desc ed ON e.matr = ed.matr
            LEFT JOIN desconto d ON ed.cod_desc = d.cod_desc
        GROUP BY
            e.matr,
            e.nome,
            e.lotacao,
            e.lotacao_div
    ),
    valores_liquidos AS (
        SELECT
            tv.nome_empregado AS nome,
            tv.id_departamento AS departamento,
            tv.id_divisao AS divisao,
            tv.total_vencimentos - td.total_descontos AS salario_liquido
        FROM
            totais_venc tv
            JOIN totais_desc td ON tv.id_empregado = td.id_empregado
    ),
    analise_salarios AS (
        SELECT
            vl.nome,
            vl.departamento,
            vl.divisao,
            vl.salario_liquido,
            AVG(vl.salario_liquido) OVER (
                PARTITION BY vl.divisao, vl.departamento
            ) AS media_divisional
        FROM
            valores_liquidos vl
    )
SELECT
    a.nome,
    ROUND(a.salario_liquido, 2) AS salario
FROM
    analise_salarios a
WHERE
    a.salario_liquido >= 8000.0
    AND a.salario_liquido > a.media_divisional
ORDER BY
    a.divisao ASC,
    a.departamento ASC,
    a.salario_liquido DESC;