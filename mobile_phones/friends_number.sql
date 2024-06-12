SELECT 
    users.id, 
    users.firstname, 
    users.lastname, 
    COUNT(CASE WHEN friend_requests.status = 'approved' THEN 1 END) AS cnt
FROM 
    users LEFT JOIN friend_requests 
    ON users.id = friend_requests.initiator_user_id 
    OR users.id = friend_requests.target_user_id
GROUP BY 
    users.id, 
    users.firstname, 
    users.lastname
ORDER BY 
    users.id ASC;