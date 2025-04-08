SELECT emp.cpf, emp.enome, dep.dnome
FROM empregados emp
JOIN departamentos dep ON emp.dnumero = dep.dnumero
LEFT JOIN trabalha trab ON emp.cpf = trab.cpf_emp
WHERE trab.pnumero IS NULL
ORDER BY emp.cpf;