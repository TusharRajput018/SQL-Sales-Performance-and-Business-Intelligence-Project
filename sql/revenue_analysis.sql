-- ==============================
-- REVENUE ANALYSIS
-- ==============================

-- Total Sales
SELECT SUM(sales) AS total_sales
FROM sales;

-- Total Orders
SELECT COUNT(order_id) AS total_orders
FROM sales;

-- Average Order Value (AOV)
SELECT 
    SUM(sales) / COUNT(DISTINCT order_id) AS avg_order_value
FROM sales;

-- Sales by Year
SELECT 
    YEAR(order_date) AS sales_year,
    SUM(sales) AS total_sales
FROM sales
GROUP BY YEAR(order_date)
ORDER BY sales_year ASC;

-- Sales by Month
SELECT 
    MONTH(order_date) AS sales_month,
    SUM(sales) AS total_sales
FROM sales
GROUP BY MONTH(order_date)
ORDER BY sales_month ASC;

-- Orders by Month
SELECT 
    MONTH(order_date) AS sales_month,
    COUNT(order_id) AS total_orders
FROM sales
GROUP BY MONTH(order_date)
ORDER BY sales_month ASC;

-- Best Performing Month
SELECT 
    MONTH(order_date) AS sales_month,
    SUM(sales) AS total_sales
FROM sales
GROUP BY MONTH(order_date)
ORDER BY total_sales DESC
LIMIT 1;

-- Worst Performing Month
SELECT 
    MONTH(order_date) AS sales_month,
    SUM(sales) AS total_sales
FROM sales
GROUP BY MONTH(order_date)
ORDER BY total_sales ASC
LIMIT 1;

-- Total Sales by Region
SELECT
    region,
    SUM(sales) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;

-- Best Performing Region
SELECT 
    region,
    SUM(sales) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC
LIMIT 1;

-- Worst Performing Region
SELECT 
    region,
    SUM(sales) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales ASC
LIMIT 1;

-- Yearly Sales Growth by Region
SELECT *
FROM (
    SELECT
        region,
        YEAR(order_date) AS order_year,
        SUM(sales) AS total_sales,
        SUM(sales) -
        LAG(SUM(sales)) OVER (
            PARTITION BY region
            ORDER BY YEAR(order_date)
        ) AS sales_growth
    FROM sales
    GROUP BY region, YEAR(order_date)
) t
ORDER BY region, order_year;
