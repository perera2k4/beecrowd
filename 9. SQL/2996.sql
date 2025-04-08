WITH RECURSIVE sender_info AS (
        SELECT
            p.id_package,
            u.name AS sender_name,
            p.year
        FROM
            packages p
            JOIN users u ON p.id_user_sender = u.id
        WHERE
            (
                p.color = 'blue'
                OR p.year = 2015
            )
            AND (u.address <> 'Taiwan')
    ),
    receiver_info AS (
        SELECT
            p.id_package,
            u.name AS receiver_name,
            p.year
        FROM
            packages p
            JOIN users u ON p.id_user_receiver = u.id
        WHERE
            (
                p.color = 'blue'
                OR p.year = 2015
            )
            AND (u.address <> 'Taiwan')
    )
SELECT
    s.year AS delivery_year,
    s.sender_name,
    r.receiver_name
FROM
    packages p
    JOIN sender_info s ON p.id_package = s.id_package
    JOIN receiver_info r ON p.id_package = r.id_package
ORDER BY
    delivery_year DESC,
    sender_name DESC,
    receiver_name DESC;
