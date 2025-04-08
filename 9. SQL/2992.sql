WITH valores_vencimento AS (
	SELECT
		empregado.matr AS cod_empregado,
		empregado.lotacao AS cod_departamento,
		empregado.lotacao_div AS cod_divisao,
		SUM(COALESCE(vencimento.valor, 0)) AS total_vencimentos
	FROM
		empregado
		LEFT JOIN emp_venc ON empregado.matr = emp_venc.matr
		LEFT JOIN vencimento ON emp_venc.cod_venc = vencimento.cod_venc
	GROUP BY
		empregado.matr,
		empregado.lotacao,
		empregado.lotacao_div
),
valores_desconto AS (
	SELECT
		empregado.matr AS cod_empregado,
		empregado.lotacao AS cod_departamento,
		empregado.lotacao_div AS cod_divisao,
		SUM(COALESCE(desconto.valor, 0)) AS total_descontos
	FROM
		empregado
		LEFT JOIN emp_desc ON empregado.matr = emp_desc.matr
		LEFT JOIN desconto ON emp_desc.cod_desc = desconto.cod_desc
	GROUP BY
		empregado.matr,
		empregado.lotacao,
		empregado.lotacao_div
),
salario_liquido_por_empregado AS (
	SELECT
		COALESCE(v.cod_departamento, d.cod_departamento) AS cod_departamento,
		COALESCE(v.cod_divisao, d.cod_divisao) AS cod_divisao,
		COALESCE(v.total_vencimentos, 0) - COALESCE(d.total_descontos, 0) AS salario_liquido
	FROM
		valores_vencimento v
		FULL OUTER JOIN valores_desconto d ON v.cod_empregado = d.cod_empregado
),
media_salarial_por_divisao AS (
	SELECT
		cod_departamento,
		cod_divisao,
		AVG(salario_liquido) AS media_salario
	FROM
		salario_liquido_por_empregado
	GROUP BY
		cod_departamento,
		cod_divisao
),
maiores_medias_por_departamento AS (
	SELECT
		cod_departamento,
		cod_divisao,
		media_salario,
		MAX(media_salario) OVER (PARTITION BY cod_departamento) AS maior_media
	FROM
		media_salarial_por_divisao
)
SELECT
	departamento.nome AS departamento,
	divisao.nome AS divisao,
	ROUND(media_salario, 2) AS media
FROM
	maiores_medias_por_departamento
	JOIN departamento ON departamento.cod_dep = maiores_medias_por_departamento.cod_departamento
	JOIN divisao ON divisao.cod_divisao = maiores_medias_por_departamento.cod_divisao
WHERE
	media_salario = maior_media
ORDER BY
	media DESC;