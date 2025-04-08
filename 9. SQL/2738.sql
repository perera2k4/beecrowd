SELECT cand.name, ROUND((sco.math * 2 + sco.specific * 3 + sco.project_plan * 5) / 10.0, 2) AS avg
FROM candidate cand
JOIN score sco ON cand.id = sco.candidate_id
ORDER BY avg DESC;