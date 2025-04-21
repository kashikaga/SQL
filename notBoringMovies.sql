//https://leetcode.com/problems/not-boring-movies/description

SELECT * 
FROM Cinema 
WHERE id%2 != 0 AND description != 'boring' order by rating desc;
