-- ==============================
-- CUSTOMER ANALYSIS
-- ==============================

-- Total Customers
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM sales;

-- Orders per Customer
SELECT 
    customer_id,
    COUNT(order_id) AS orders_per_customer
FROM sales
GROUP BY customer_id
ORDER BY orders_per_customer DESC;

-- Repeat Customers
SELECT 
    customer_id,
    COUNT(order_id) AS orders_per_customer
FROM sales
GROUP BY customer_id
HAVING COUNT(order_id) > 1
ORDER BY orders_per_customer DESC;

-- Top 10 Customers by Revenue
SELECT 
    customer_id,
    SUM(sales) AS total_sales
FROM sales
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 10;

-- Revenue from Repeat Customers
SELECT 
    customer_id,
    SUM(sales) AS total_sales
FROM sales
GROUP BY customer_id
HAVING COUNT(order_id) > 1
ORDER BY total_sales DESC;

-- Customer Lifetime Value (Basic CLV)
SELECT 
    customer_id,
    customer_name,
    COUNT(order_id) AS total_orders,
    SUM(sales) AS total_sales,
    SUM(sales) / COUNT(order_id) AS clv
FROM sales
GROUP BY customer_id, customer_name
HAVING COUNT(order_id) > 1
ORDER BY total_sales DESC;
