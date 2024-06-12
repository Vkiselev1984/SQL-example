SELECT
    id,
    created_at AS message_date,
    LEAD(created_at) OVER (ORDER BY created_at) AS next_message_date,
    TIMESTAMPDIFF(MINUTE, created_at, LEAD(created_at) OVER (ORDER BY created_at)) AS difference_in_minutes
FROM
    messages
ORDER BY
    created_at ASC;