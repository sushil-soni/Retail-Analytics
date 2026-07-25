-- =====================================================
-- BUSINESS QUERIES
-- =====================================================

-- 1. Total Customers
SELECT COUNT(*) AS Total_Customers
FROM customers;

-- 2. Total Orders
SELECT COUNT(*) AS Total_Orders
FROM orders;

-- 3. Total Products
SELECT COUNT(*) AS Total_Products
FROM products;

-- 4. Total Sellers
SELECT COUNT(*) AS Total_Sellers
FROM sellers;

-- 5. Order Status Distribution
SELECT
    order_status,
    COUNT(*) AS Total_Orders
FROM orders
GROUP BY order_status
ORDER BY Total_Orders DESC;

-- 6. Top 10 Selling Products
SELECT
    product_id,
    COUNT(*) AS Total_Sold
FROM order_items
GROUP BY product_id
ORDER BY Total_Sold DESC
LIMIT 10;

-- 7. Top 10 Sellers by Revenue
SELECT
    seller_id,
    ROUND(SUM(price),2) AS Revenue
FROM order_items
GROUP BY seller_id
ORDER BY Revenue DESC
LIMIT 10;

-- 8. Total Revenue
SELECT
    ROUND(SUM(price),2) AS Total_Revenue
FROM order_items;

-- 9. Average Order Value
SELECT
    ROUND(AVG(payment_value),2) AS Avg_Order_Value
FROM order_payments;

-- 10. Payment Method Distribution
SELECT
    payment_type,
    COUNT(*) AS Total_Payments
FROM order_payments
GROUP BY payment_type
ORDER BY Total_Payments DESC;

-- 11. Average Review Score
SELECT
    ROUND(AVG(review_score),2) AS Average_Rating
FROM order_reviews;

-- 12. Review Score Distribution
SELECT
    review_score,
    COUNT(*) AS Total_Reviews
FROM order_reviews
GROUP BY review_score
ORDER BY review_score;

-- 13. Top 10 Customer States
SELECT
    customer_state,
    COUNT(*) AS Customers
FROM customers
GROUP BY customer_state
ORDER BY Customers DESC
LIMIT 10;

-- 14. Top 10 Seller States
SELECT
    seller_state,
    COUNT(*) AS Sellers
FROM sellers
GROUP BY seller_state
ORDER BY Sellers DESC
LIMIT 10;

-- 15. Top Product Categories
SELECT
    product_category_name,
    COUNT(*) AS Products
FROM products
GROUP BY product_category_name
ORDER BY Products DESC
LIMIT 10;

-- 16. Monthly Orders
SELECT
    YEAR(order_purchase_timestamp) AS Year,
    MONTH(order_purchase_timestamp) AS Month,
    COUNT(*) AS Total_Orders
FROM orders
GROUP BY Year, Month
ORDER BY Year, Month;

-- 17. Monthly Revenue
SELECT
    YEAR(o.order_purchase_timestamp) AS Year,
    MONTH(o.order_purchase_timestamp) AS Month,
    ROUND(SUM(oi.price),2) AS Revenue
FROM orders o
JOIN order_items oi
ON o.order_id = oi.order_id
GROUP BY Year, Month
ORDER BY Year, Month;

-- 18. Top 10 Most Expensive Products Sold
SELECT
    product_id,
    MAX(price) AS Highest_Price
FROM order_items
GROUP BY product_id
ORDER BY Highest_Price DESC
LIMIT 10;

-- 19. Average Delivery Time (Days)
SELECT
ROUND(
AVG(
DATEDIFF(
order_delivered_customer_date,
order_purchase_timestamp
)
),2) AS Avg_Delivery_Days
FROM orders
WHERE order_delivered_customer_date IS NOT NULL;

-- 20. Top 10 Cities by Customers
SELECT
    customer_city,
    COUNT(*) AS Total_Customers
FROM customers
GROUP BY customer_city
ORDER BY Total_Customers DESC
LIMIT 10;