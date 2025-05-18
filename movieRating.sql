//https://leetcode.com/problems/movie-rating/description
WITH temp1 AS (SELECT name,
COUNT(mr.rating) OVER (PARTITION BY mr.user_id) AS rating_cnt
FROM MovieRating mr
LEFT JOIN Users u
ON mr.user_id = u.user_id
ORDER BY rating_cnt DESC, name ASC
LIMIT 1),
temp2 AS (SELECT m.title, 
AVG(mr.rating) AS avg_rating
FROM MovieRating mr
LEFT JOIN Movies m
ON m.movie_id = mr.movie_id
WHERE DATE_FORMAT(mr.created_at, '%Y-%m') = "2020-02"
GROUP BY m.title
ORDER BY avg_rating DESC, m.title ASC
LIMIT 1)

SELECT name AS results FROM temp1
UNION ALL
SELECT title AS results FROM temp2
