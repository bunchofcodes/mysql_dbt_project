WITH RECURSIVE dates AS (
    SELECT DATE('2001-01-01') AS date
    UNION ALL
    SELECT DATE_ADD(date, INTERVAL 1 DAY)
    FROM dates
    WHERE date < '2008-12-31'
)

SELECT
    CAST(DATE_FORMAT(date, '%Y%m%d') AS UNSIGNED) AS sk_date,
    CAST(DATE_FORMAT(date, '%Y%m%d') AS UNSIGNED) AS date_id,
    date,
    YEAR(date) AS year,
    MONTHNAME(date) AS month,
    LPAD(MONTH(date), 2, '0') AS month_of_year,
    DAY(date) AS day_of_month,
    DAYNAME(date) AS day,
    DAYOFWEEK(date) AS day_of_week,
    CASE 
        WHEN DAYOFWEEK(date) IN (1,7) THEN 'Weekend'
        ELSE 'Weekday'
    END AS weekend,
    DAYOFYEAR(date) AS day_of_year,
    WEEK(date, 3) AS week_of_year,
    QUARTER(date) AS quarter,
    DATE_SUB(date, INTERVAL 1 DAY) AS previous_day,
    DATE_ADD(date, INTERVAL 1 DAY) AS next_day
FROM dates
