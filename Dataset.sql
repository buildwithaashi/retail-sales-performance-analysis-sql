/*
===========================================
Retail Sales Analytics using SQL
Dataset Creation Script

Database: SQLite
===========================================
*/

-- =========================================
-- Drop existing tables (optional)
-- =========================================

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;

-- =========================================
-- Create Customers Table
-- =========================================

CREATE TABLE customers(
    customer_id INTEGER,
    customer_name TEXT,
    city TEXT
);

-- =========================================
-- Insert Customer Data
-- =========================================

INSERT INTO customers VALUES
(1,'Aashi','Delhi'),
(2,'Aman','Mumbai'),
(3,'Neha','Delhi'),
(4,'Riya','Jaipur'),
(5,'Akshat','Mumbai'),
(6,'Rohan','Ajmer'),
(7,'Meera','Delhi');

-- =========================================
-- Create Products Table
-- =========================================

CREATE TABLE products(
    product_id INTEGER,
    product_name TEXT,
    category TEXT,
    price INTEGER
);

-- =========================================
-- Insert Product Data
-- =========================================

INSERT INTO products VALUES
(101,'Laptop','Electronics',60000),
(102,'Phone','Electronics',30000),
(103,'Headphones','Electronics',3000),
(104,'Chair','Furniture',7000),
(105,'Desk','Furniture',12000),
(106,'Notebook','Stationery',200),
(107,'Pen Set','Stationery',500),
(108,'Monitor','Electronics',15000);

-- =========================================
-- Create Orders Table
-- =========================================

CREATE TABLE orders(
    order_id INTEGER,
    customer_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    order_status TEXT
);

-- =========================================
-- Insert Order Data
-- =========================================

INSERT INTO orders VALUES
(1001,1,101,1,'Completed'),
(1002,2,102,2,'Completed'),
(1003,1,103,2,'Completed'),
(1004,3,104,1,'Cancelled'),
(1005,4,105,1,'Completed'),
(1006,5,102,1,'Completed'),
(1007,2,106,5,'Completed'),
(1008,4,103,3,'Completed'),
(1009,1,107,4,'Completed'),
(1010,5,104,2,'Cancelled'),
(1011,3,102,1,'Completed'),
(1012,2,103,1,'Completed');

-- =========================================
-- End of Dataset
-- =========================================
