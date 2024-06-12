SELECT COUNT(*)
FROM likes
INNER JOIN media ON likes.media_id = media.id
INNER JOIN profiles ON media.user_id = profiles.user_id
WHERE profiles.gender = 'f';