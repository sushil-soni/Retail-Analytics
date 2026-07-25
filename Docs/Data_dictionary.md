# Data Dictionary

This document describes the important tables and columns used in the Retail Analytics project.

---

## 1. Customers Table

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| customer_id | VARCHAR(50) | Unique identifier for each customer |
| customer_unique_id | VARCHAR(50) | Unique customer reference |
| customer_zip_code_prefix | INT | Customer ZIP code prefix |
| customer_city | VARCHAR(100) | Customer city |
| customer_state | CHAR(2) | Customer state |

---

## 2. Orders Table

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| order_id | VARCHAR(50) | Unique order identifier |
| customer_id | VARCHAR(50) | Customer who placed the order |
| order_status | VARCHAR(30) | Current order status |
| order_purchase_timestamp | DATETIME | Purchase date and time |
| order_approved_at | DATETIME | Payment approval date |
| order_delivered_customer_date | DATETIME | Delivery completion date |
| order_estimated_delivery_date | DATETIME | Estimated delivery date |

---

## 3. Order Items Table

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| order_id | VARCHAR(50) | Order identifier |
| product_id | VARCHAR(50) | Product identifier |
| seller_id | VARCHAR(50) | Seller identifier |
| price | DECIMAL(10,2) | Product price |
| freight_value | DECIMAL(10,2) | Shipping cost |

---

## 4. Products Table

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| product_id | VARCHAR(50) | Product identifier |
| product_category_name | VARCHAR(100) | Product category |
| product_weight_g | INT | Product weight (grams) |
| product_length_cm | INT | Product length (cm) |
| product_height_cm | INT | Product height (cm) |
| product_width_cm | INT | Product width (cm) |

---

## 5. Sellers Table

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| seller_id | VARCHAR(50) | Unique seller identifier |
| seller_city | VARCHAR(100) | Seller city |
| seller_state | CHAR(2) | Seller state |

---

## 6. Order Payments Table

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| order_id | VARCHAR(50) | Order identifier |
| payment_type | VARCHAR(30) | Payment method |
| payment_installments | INT | Number of installments |
| payment_value | DECIMAL(10,2) | Payment amount |

---

## 7. Order Reviews Table

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| review_id | VARCHAR(50) | Review identifier |
| order_id | VARCHAR(50) | Order identifier |
| review_score | INT | Rating (1-5) |
| review_comment_title | TEXT | Review title |
| review_comment_message | TEXT | Review description |

---

## 8. Geolocation Table

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| geolocation_zip_code_prefix | INT | ZIP code prefix |
| geolocation_lat | DECIMAL | Latitude |
| geolocation_lng | DECIMAL | Longitude |
| geolocation_city | VARCHAR(100) | City |
| geolocation_state | CHAR(2) | State |

---

## 9. Category Translation Table

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| product_category_name | VARCHAR(100) | Original category name |
| product_category_name_english | VARCHAR(100) | English category name |