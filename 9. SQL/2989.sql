WITH salario_total_empregado AS (
    SELECT
        emp.matr,
        emp.lotacao_div,
        SUM(COALESCE(v.valor, 0)) AS total_salario
    FROM
        empregado emp
    JOIN emp_venc ev ON emp.matr = ev.matr
    JOIN vencimento v ON v.cod_venc = ev.cod_venc
    WHERE
        v.tipo = 'V'
    GROUP BY
        emp.matr,
        emp.lotacao_div
)

SELECT d.nome AS departamento, dv.nome AS divisao, ROUND(AVG(e.total_salario), 2) AS media, ROUND(MAX(e.total_salario), 2) AS maior
FROM salario_total_empregado e
JOIN divisao dv ON dv.cod_divisao = e.lotacao_div
JOIN departamento d ON d.cod_dep = dv.cod_dep
GROUP BY d.nome, dv.nome
ORDER BY media DESC;