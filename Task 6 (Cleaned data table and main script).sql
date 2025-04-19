SELECT * FROM task_6.cleaned_orders;

/*Analyze monthly revenue and order volume across all years*/
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM task_6.cleaned_orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

/*Analyze monthly profit along with revenue and order volume*/
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(profit) AS monthly_profit,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM task_6.cleaned_orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

/*Analyze monthly revenue and order volume grouped by category*/
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    category,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM task_6.cleaned_orders
GROUP BY YEAR(order_date), MONTH(order_date), category
ORDER BY year, month, category;

/*Analyze monthly revenue and order volume grouped by region*/
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    region,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM task_6.cleaned_orders
GROUP BY YEAR(order_date), MONTH(order_date), region
ORDER BY year, month, region;

/*Analyze monthly profit and revenue by region*/
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    region,
    SUM(profit) AS monthly_profit,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM task_6.cleaned_orders
GROUP BY YEAR(order_date), MONTH(order_date), region
ORDER BY year, month, region;