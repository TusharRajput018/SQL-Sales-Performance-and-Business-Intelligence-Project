-- ==============================
-- SHIPPING ANALYSIS
-- ==============================

-- Orders by Ship Mode
SELECT 
    ship_mode,
    COUNT(order_id) AS total_orders
FROM sales
GROUP BY ship_mode
ORDER BY total_orders DESC;

-- Average Shipping Time (in days)
SELECT
    ship_mode,
    AVG(DATEDIFF(ship_date, order_date)) AS avg_shipping_days
FROM sales
GROUP BY ship_mode;
