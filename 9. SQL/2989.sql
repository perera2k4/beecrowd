WITH RECURSIVE
	valores_vencimento AS (
		SELECT
			empregado.matr AS matricula,
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
			empregado.matr AS matricula,
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
	salarios_liquidos_por_empregado AS (
		SELECT
			venc.cod_departamento,
			venc.cod_divisao,
			venc.total_vencimentos - descs.total_descontos AS salario_liquido
		FROM
			valores_vencimento venc
			JOIN valores_desconto descs ON venc.matricula = descs.matricula
	)
SELECT
	departamento.nome AS nome_departamento,
	divisao.nome AS nome_divisao,
	ROUND(AVG(salarios_liquidos_por_empregado.salario_liquido), 2) AS media_salario,
	ROUND(MAX(salarios_liquidos_por_empregado.salario_liquido), 2) AS maior_salario
FROM
	divisao
	JOIN departamento ON divisao.cod_dep = departamento.cod_dep
	JOIN salarios_liquidos_por_empregado ON 
		salarios_liquidos_por_empregado.cod_departamento = departamento.cod_dep AND
		salarios_liquidos_por_empregado.cod_divisao = divisao.cod_divisao
GROUP BY
	divisao.cod_divisao,
	divisao.cod_dep,
	departamento.nome,
	divisao.nome
ORDER BY
	media_salario DESC;