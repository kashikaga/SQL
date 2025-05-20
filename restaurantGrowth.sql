//https://leetcode.com/problems/restaurant-growth/description
WITH daily AS (
  SELECT
    visited_on,
    SUM(amount) AS daily_amount
  FROM Customer
  GROUP BY visited_on
),
moving AS (
  SELECT
    visited_on,
    SUM(daily_amount) 
      OVER (
        ORDER BY visited_on
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
      ) AS week_sum,
    ROUND(
      SUM(daily_amount) 
        OVER (
          ORDER BY visited_on
          ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) / 7
      , 2
    ) AS average_amount,
    ROW_NUMBER() 
      OVER (ORDER BY visited_on) AS rn
  FROM daily
)
SELECT
  visited_on,
  week_sum   AS amount,
  average_amount
FROM moving
WHERE rn >= 7
ORDER BY visited_on;
