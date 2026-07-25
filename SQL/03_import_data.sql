
LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_customers_dataset.csv"
INTO TABLE customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select count(*) from customers;

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_products_dataset.csv"
INTO TABLE products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
@product_id,
@product_category_name,
@product_name_lenght,
@product_description_lenght,
@product_photos_qty,
@product_weight_g,
@product_length_cm,
@product_height_cm,
@product_width_cm
)
SET
product_id = NULLIF(@product_id,''),
product_category_name = NULLIF(@product_category_name,''),
product_name_lenght = NULLIF(@product_name_lenght,''),
product_description_lenght = NULLIF(@product_description_lenght,''),
product_photos_qty = NULLIF(@product_photos_qty,''),
product_weight_g = NULLIF(@product_weight_g,''),
product_length_cm = NULLIF(@product_length_cm,''),
product_height_cm = NULLIF(@product_height_cm,''),
product_width_cm = NULLIF(@product_width_cm,'');

select count(*) from products;

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_sellers_dataset.csv"
INTO TABLE sellers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select count(*) from sellers;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_orders_dataset.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
@order_id,
@customer_id,
@order_status,
@order_purchase_timestamp,
@order_approved_at,
@order_delivered_carrier_date,
@order_delivered_customer_date,
@order_estimated_delivery_date
)
SET
order_id = NULLIF(@order_id,''),
customer_id = NULLIF(@customer_id,''),
order_status = NULLIF(@order_status,''),
order_purchase_timestamp = NULLIF(@order_purchase_timestamp,''),
order_approved_at = NULLIF(@order_approved_at,''),
order_delivered_carrier_date = NULLIF(@order_delivered_carrier_date,''),
order_delivered_customer_date = NULLIF(@order_delivered_customer_date,''),
order_estimated_delivery_date = NULLIF(@order_estimated_delivery_date,'');

select count(*) from orders;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/product_category_name_translation.csv'
INTO TABLE category_translation
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
@product_category_name,
@product_category_name_english
)
SET
product_category_name = NULLIF(@product_category_name,''),
product_category_name_english = NULLIF(@product_category_name_english,'');

select count(*) from category_translation;


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_order_items_dataset.csv'
INTO TABLE order_items
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
@order_id,
@order_item_id,
@product_id,
@seller_id,
@shipping_limit_date,
@price,
@freight_value
)
SET
order_id = NULLIF(@order_id,''),
order_item_id = NULLIF(@order_item_id,''),
product_id = NULLIF(@product_id,''),
seller_id = NULLIF(@seller_id,''),
shipping_limit_date = NULLIF(@shipping_limit_date,''),
price = NULLIF(@price,''),
freight_value = NULLIF(@freight_value,'');

select count(*) from order_items;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_order_payments_dataset.csv'
INTO TABLE order_payments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
@order_id,
@payment_sequential,
@payment_type,
@payment_installments,
@payment_value
)
SET
order_id = NULLIF(@order_id,''),
payment_sequential = NULLIF(@payment_sequential,''),
payment_type = NULLIF(@payment_type,''),
payment_installments = NULLIF(@payment_installments,''),
payment_value = NULLIF(@payment_value,'');

select count(*) from order_payments;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_order_reviews_dataset.csv'
INTO TABLE order_reviews
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
@review_id,
@order_id,
@review_score,
@review_comment_title,
@review_comment_message,
@review_creation_date,
@review_answer_timestamp
)
SET
review_id = NULLIF(@review_id,''),
order_id = NULLIF(@order_id,''),
review_score = NULLIF(@review_score,''),
review_comment_title = NULLIF(@review_comment_title,''),
review_comment_message = NULLIF(@review_comment_message,''),
review_creation_date = NULLIF(@review_creation_date,''),
review_answer_timestamp = NULLIF(@review_answer_timestamp,'');

select count(*) from order_reviews;

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_geolocation_dataset.csv"
INTO TABLE geolocation
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select count(*) from geolocation;











