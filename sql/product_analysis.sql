-- ==============================
-- PRODUCT ANALYSIS
-- ==============================

-- Sales by Category
SELECT 
    category,
    SUM(sales) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;

-- Top 10 Products by Sales
SELECT 
    product_name,
    SUM(sales) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

-- Bottom 10 Products by Sales
SELECT 
    product_name,
    SUM(sales) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales ASC
LIMIT 10;
