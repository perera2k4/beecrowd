WITH
  inner_nodes AS (
    SELECT DISTINCT
      nodes.pointer AS node_id
    FROM
      nodes
    WHERE
      nodes.pointer IS NOT NULL
  )
SELECT DISTINCT
  node_id,
  CASE
    WHEN n.pointer IS NULL THEN 'LEAF'
    WHEN EXISTS (
      SELECT
        *
      FROM
        inner_nodes
      WHERE
        inner_nodes.node_id = n.node_id
    ) THEN 'INNER'
    ELSE 'ROOT'
  END AS type
FROM
  nodes AS n
ORDER BY
  node_id;