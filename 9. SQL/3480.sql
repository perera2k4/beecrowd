WITH
    proximas_cadeiras AS (
        SELECT
            c.queue AS fila,
            c.id AS cadeira_atual,
            LEAD(c.id) OVER (
                PARTITION BY c.queue
            ) AS proxima_cadeira
        FROM
            chairs c
        WHERE
            c.available = TRUE
    )
SELECT
    pc.fila AS queue,
    pc.cadeira_atual AS left,
    pc.proxima_cadeira AS right
FROM proximas_cadeiras pc
WHERE pc.proxima_cadeira IS NOT NULL AND pc.proxima_cadeira = pc.cadeira_atual + 1;
