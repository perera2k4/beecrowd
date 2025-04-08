WITH RECURSIVE
    totais_vencimentos AS (
        SELECT
            e.matr AS cod_empregado,
            e.nome AS nome_empregado,
            e.lotacao AS codigo_departamento,
            SUM(COALESCE(v.valor, 0)) AS total_vencimentos
        FROM
            empregado e
            LEFT JOIN emp_venc ev ON e.matr = ev.matr
            LEFT JOIN vencimento v ON ev.cod_venc = v.cod_venc
        GROUP BY
            e.matr,
            e.nome,
            e.lotacao
    ),
    totais_descontos AS (
        SELECT
            e.matr AS cod_empregado,
            e.nome AS nome_empregado,
            e.lotacao AS codigo_departamento,
            SUM(COALESCE(d.valor, 0)) AS total_descontos
        FROM
            empregado e
            LEFT JOIN emp_desc ed ON e.matr = ed.matr
            LEFT JOIN desconto d ON ed.cod_desc = d.cod_desc
        GROUP BY
            e.matr,
            e.nome,
            e.lotacao
    ),
    folha_pagamento AS (
        SELECT
            tv.cod_empregado,
            tv.nome_empregado,
            tv.codigo_departamento,
            tv.total_vencimentos AS salario_bruto,
            td.total_descontos AS total_descontos,
            tv.total_vencimentos - td.total_descontos AS salario_liquido
        FROM
            totais_vencimentos tv
            JOIN totais_descontos td ON tv.cod_empregado = td.cod_empregado
    )
SELECT
    d.nome AS "Departamento",
    f.nome_empregado AS "Empregado",
    CASE
        WHEN f.salario_bruto = 0 THEN '0'
        ELSE ROUND(f.salario_bruto, 2)
    END AS "Salario Bruto",
    CASE
        WHEN f.total_descontos = 0 THEN '0'
        ELSE ROUND(f.total_descontos, 2)
    END AS "Total Desconto",
    CASE
        WHEN f.salario_liquido = 0 THEN '0'
        ELSE ROUND(f.salario_liquido, 2)
    END AS "Salario Liquido"
FROM
    folha_pagamento f
    JOIN departamento d ON f.codigo_departamento = d.cod_dep
ORDER BY
    "Salario Liquido" DESC;