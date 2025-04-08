SELECT d.nome AS "Nome Departamento", COUNT(e.matr) AS "Numero de Empregados", ROUND(AVG(COALESCE(s.total_salario, 0)), 2) AS "Media Salarial", ROUND(MAX(COALESCE(s.total_salario, 0)), 2) AS "Maior Salario", ROUND(MIN(COALESCE(s.total_salario, 0)), 2) AS "Menor Salario"
FROM departamento d
JOIN empregado e ON e.lotacao = d.cod_dep
LEFT JOIN (
    SELECT ev.matr, SUM(v.valor) AS total_salario
    FROM emp_venc ev
    JOIN vencimento v ON v.cod_venc = ev.cod_venc
    GROUP BY ev.matr
) s ON s.matr = e.matr
GROUP BY d.nome
ORDER BY "Media Salarial" DESC;