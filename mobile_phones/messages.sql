SELECT id
FROM users
WHERE id NOT IN (SELECT from_user_id FROM messages);
