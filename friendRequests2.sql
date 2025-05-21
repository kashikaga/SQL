//https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/description
SELECT requester_id AS id, COUNT(*) AS num FROM
(SELECT requester_id, accepter_id FROM RequestAccepted
UNION
SELECT accepter_id, requester_id FROM RequestAccepted) t
GROUP BY requester_id
ORDER BY num DESC
LIMIT 1
