SELECT
    CASE
        WHEN gender = 'f' THEN 'женский'
        WHEN gender = 'm' THEN 'мужской'
    END as gender,
    COUNT(*) as likes_count
FROM likes
INNER JOIN profiles ON likes.user_id = profiles.user_id
GROUP BY gender
ORDER BY likes_count DESC;