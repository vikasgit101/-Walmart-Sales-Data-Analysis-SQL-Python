SELECT * FROM walmart;

select count(*) From walmart;

select distinct payment_method from walmart;

select
	payment_method,
    count(*)
from walmart
group by payment_method;

SELECT COUNT(DISTINCT branch) FROM walmart;

select min(quantity) from walmart;

-- ques_1

SELECT 
    payment_method,
    COUNT(*) AS no_of_payments,
    SUM(quantity) AS no_of_qty_sold
FROM walmart
GROUP BY payment_method;


-- ques 3


SELECT *
FROM (
    SELECT
        branch,
        DAYNAME(STR_TO_DATE(date, '%d/%m/%y')) AS day_name,
        COUNT(*) AS no_transactions,
        RANK() OVER(PARTITION BY branch ORDER BY COUNT(*) DESC) AS `rank`
    FROM walmart
    GROUP BY branch, day_name
) AS subquery
WHERE `rank` = 1;


-- ques 4

SELECT 
	payment_method,
    count(*) as no_payments,
    sum(quantity) as no_qty_sold
FROM walmart
group by payment_method;


-- ques 5

SELECT 
    city, 
    category, 
    MIN(rating) AS min_rating, 
    MAX(rating) AS max_rating, 
    AVG(rating) AS avg_rating
FROM walmart
GROUP BY city, category;

-- ques 6

SELECT 
	category,
    sum(total) as total_revenue,
    sum(total * profit_margin)
from walmart
group by 1;
    
-- ques 7

SELECT 
    branch, 
    payment_method, 
    total_trans, 
    RANK() OVER (PARTITION BY branch ORDER BY total_trans DESC) AS rnk
FROM (
    SELECT 
        branch, 
        payment_method, 
        COUNT(*) AS total_trans
    FROM walmart
    GROUP BY branch, payment_method
) AS subquery;


-- ques 8

SELECT 
    CASE 
        WHEN HOUR(time) < 12 THEN 'Morning'
        WHEN HOUR(time) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS day_time,
    COUNT(*) AS total_transactions
FROM walmart
GROUP BY day_time;

-- ques 9

WITH revenue_2022 AS (
    SELECT 
        branch, 
        SUM(total) AS revenue
    FROM walmart
    WHERE YEAR(STR_TO_DATE(date, '%d/%m/%y')) = 2022
    GROUP BY branch
),
revenue_2023 AS (
    SELECT 
        branch, 
        SUM(total) AS revenue
    FROM walmart
    WHERE YEAR(STR_TO_DATE(date, '%d/%m/%y')) = 2023
    GROUP BY branch
)
SELECT
    r22.branch,
    r22.revenue AS last_year_revenue,
    r23.revenue AS cr_year_revenue,
    ROUND((r22.revenue - r23.revenue) / r22.revenue * 100, 2) AS revenue_drop_percentage
FROM revenue_2022 r22
JOIN revenue_2023 r23 ON r22.branch = r23.branch
WHERE r22.revenue > r23.revenue;

