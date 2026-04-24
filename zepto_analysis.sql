-- ==============================
-- DATABASE SETUP
-- ==============================

CREATE DATABASE zepto;
USE zepto;

DROP TABLE IF EXISTS zepto_v2;

CREATE TABLE zepto_v2 (
    sku_id SERIAL PRIMARY KEY,
    category VARCHAR(120),
    name VARCHAR(150) NOT NULL,
    mrp NUMERIC(8,2),
    discountPercent NUMERIC(5,2),
    availableQuantity INTEGER,
    discountedSellingPrice NUMERIC(8,2),
    weightInGms INTEGER,
    outOfStock BOOLEAN,
    quantity INTEGER
);

-- ==============================
-- DATA EXPLORATION
-- ==============================

-- Total Rows
SELECT COUNT(*) AS total_rows FROM zepto_v2;

-- Sample Data
SELECT * FROM zepto_v2 LIMIT 10;

-- NULL Values Check
SELECT * 
FROM zepto_v2
WHERE name IS NULL
   OR category IS NULL
   OR mrp IS NULL
   OR discountPercent IS NULL
   OR availableQuantity IS NULL
   OR weightInGms IS NULL
   OR discountedSellingPrice IS NULL
   OR outOfStock IS NULL
   OR quantity IS NULL;

-- Distinct Categories
SELECT DISTINCT category FROM zepto_v2;

-- Stock Status
SELECT outOfStock, COUNT(*) 
FROM zepto_v2
GROUP BY outOfStock;

-- Duplicate Products
SELECT name, COUNT(*) AS count
FROM zepto_v2
GROUP BY name
HAVING COUNT(*) > 1;

-- ==============================
-- DATA CLEANING
-- ==============================

-- Remove invalid price records
DELETE FROM zepto_v2
WHERE mrp = 0;

-- Convert paise to rupees
UPDATE zepto_v2
SET 
    mrp = mrp / 100.0,
    discountedSellingPrice = discountedSellingPrice / 100;

-- ==============================
-- BUSINESS QUESTIONS
-- ==============================

-- Q1: Top 10 best-value products
SELECT name, category, discountPercent
FROM zepto_v2
WHERE discountPercent > 0
ORDER BY discountPercent DESC
LIMIT 10;

-- Q2: High MRP but out of stock
SELECT name, category, mrp
FROM zepto_v2
WHERE outOfStock = TRUE
ORDER BY mrp DESC;

-- Q3: Estimated revenue per category
SELECT category,
       SUM(discountedSellingPrice * quantity) AS estimated_revenue
FROM zepto_v2
GROUP BY category;

-- Q4: MRP > 500 and discount < 10%
SELECT name, category, mrp, discountPercent
FROM zepto_v2
WHERE mrp > 500 AND discountPercent < 10;

-- Q5: Top 5 categories by avg discount
SELECT category,
       ROUND(AVG(discountPercent), 2) AS avg_discount
FROM zepto_v2
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;

-- Q6: Price per gram (>100g)
SELECT name, category,
       ROUND(discountedSellingPrice / weightInGms, 4) AS price_per_gram
FROM zepto_v2
WHERE weightInGms > 100
ORDER BY price_per_gram ASC;

-- Q7: Product segmentation
SELECT name, category, weightInGms,
       CASE
           WHEN weightInGms < 500 THEN 'Low'
           WHEN weightInGms BETWEEN 500 AND 1000 THEN 'Medium'
           ELSE 'Bulk'
       END AS product_size
FROM zepto_v2;

-- Q8: Total inventory weight per category
SELECT category,
       SUM(weightInGms * quantity) AS total_inventory_weight
FROM zepto_v2
GROUP BY category;
