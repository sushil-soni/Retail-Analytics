# Database Design

## 1. Customers Table

**Primary Key:**
customer_id

**Purpose:**
Stores customer information.

**Important Columns:**
- customer_id
- customer_unique_id
- customer_zip_code_prefix
- customer_city
- customer_state

---

## 2. Orders Table

**Primary Key:**
order_id

**Foreign Key:**
customer_id

**Purpose:**
Stores order information.

**Important Columns:**
- order_id
- customer_id
- order_status
- order_purchase_timestamp
- order_delivered_customer_date
- order_estimated_delivery_date

---

## 3. Order Items Table

**Primary Key:**
No single Primary Key

**Foreign Keys:**
- order_id
- product_id
- seller_id

**Purpose:**
Stores products purchased in each order.

**Important Columns:**
- order_id
- product_id
- seller_id
- price
- freight_value

---

## 4. Products Table

**Primary Key:**
product_id

**Purpose:**
Stores product information.

**Important Columns:**
- product_id
- product_category_name
- product_weight_g
- product_length_cm
- product_height_cm
- product_width_cm

Customers
    │
    │ customer_id
    ▼
Orders
    │
    ├──────────────┐
    │              │
    ▼              ▼
Order Items     Payments
    │
    │
    ├──────► Products
    │
    ▼
 Sellers

Orders
    │
    ▼
Reviews