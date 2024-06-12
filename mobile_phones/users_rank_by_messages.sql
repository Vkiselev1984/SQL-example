SELECT
    DENSE_RANK() OVER (ORDER BY sent_messages DESC) as user_rank,
    firstname,
    lastname,
    sent_messages
FROM (
    SELECT
        users.firstname,
        users.lastname,
        COUNT(messages.id) AS sent_messages
    FROM
        users LEFT JOIN messages
        ON users.id = messages.from_user_id
    GROUP BY
        users.firstname,
        users.lastname
    ) AS subquery
ORDER BY
    user_rank ASC;