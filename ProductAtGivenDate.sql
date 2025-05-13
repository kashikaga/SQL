//https://leetcode.com/problems/product-price-at-a-given-date/description
SELECT product_id
     , CASE WHEN '2019-08-16' < start_dt THEN 10
            ELSE new_price
        END AS price
  FROM (SELECT product_id
             , new_price
             , change_date AS start_dt
             , lead(change_date) OVER (PARTITION BY product_id ORDER BY change_date) AS end_dt
             , min(change_date) OVER (PARTITION BY product_id) AS min_dt
          FROM products) p
 WHERE ('2019-08-16' >= start_dt
        AND ('2019-08-16' < end_dt
             OR end_dt IS NULL))
    OR ('2019-08-16' < start_dt
        AND start_dt = min_dt);
