WITH RECURSIVE
  sendo_seguido AS (
    SELECT
      followers.follower_id AS relacao_id,
      users.user_id AS user_id,
      users.user_name AS user_name,
      users.posts AS user_posts
    FROM
      followers
      JOIN users ON users.user_id = followers.user_id_fk
  ),
  seguindo AS (
    SELECT
      followers.follower_id AS relacao_id,
      users.user_id AS user_id,
      users.user_name AS user_name,
      users.posts AS user_posts
    FROM
      followers
      JOIN users ON users.user_id = followers.following_user_id_fk
  ),
  user1_user2 AS (
    SELECT
      CASE
        WHEN sendo_seguido.user_posts < seguindo.user_posts THEN sendo_seguido.user_id
        ELSE seguindo.user_id
      END AS u1_id,
      CASE
        WHEN sendo_seguido.user_posts >= seguindo.user_posts THEN sendo_seguido.user_id
        ELSE seguindo.user_id
      END AS u2_id,
      CASE
        WHEN sendo_seguido.user_posts < seguindo.user_posts THEN sendo_seguido.user_name
        ELSE seguindo.user_name
      END AS u1_name,
      CASE
        WHEN sendo_seguido.user_posts >= seguindo.user_posts THEN sendo_seguido.user_name
        ELSE seguindo.user_name
      END AS u2_name
    FROM
      sendo_seguido
      JOIN seguindo ON sendo_seguido.relacao_id = seguindo.relacao_id
    GROUP BY
      u1_id,
      u1_name,
      u2_id,
      u2_name
    HAVING
      COUNT(*) = 2
  )
SELECT
  u1_name,
  u2_name
FROM
  user1_user2
ORDER BY
  user1_user2.u1_id ASC,
  user1_user2.u2_id ASC;