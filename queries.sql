 
use pharma;

show tables;
select * from pharma_products;

SELECT 
    COUNT(*) AS discontinued_products
FROM pharma_products
WHERE is_discontinued = TRUE;

SELECT 
    brand_name,
    manufacturer,
    price_inr,
    dosage_form,
    therapeutic_class
FROM pharma_products
ORDER BY price_inr DESC
LIMIT 10;

SELECT 
    dosage_form,
    COUNT(*) AS product_count
FROM pharma_products
GROUP BY dosage_form
ORDER BY product_count DESC;


SELECT 
    manufacturer,
    COUNT(*) AS total_products
FROM pharma_products
GROUP BY manufacturer
ORDER BY total_products DESC
LIMIT 10;

SELECT 
    therapeutic_class,
    COUNT(*) AS product_count,
    ROUND(AVG(price_inr), 2) AS avg_price
FROM pharma_products
GROUP BY therapeutic_class
ORDER BY avg_price DESC;


SELECT 
    manufacturer,
    COUNT(*) AS product_count,
    ROUND(AVG(price_inr), 2) AS avg_price
FROM pharma_products
GROUP BY manufacturer
HAVING AVG(price_inr) > 200
ORDER BY avg_price DESC;


SELECT 
    primary_ingredient,
    COUNT(*) AS product_count
FROM pharma_products
GROUP BY primary_ingredient
ORDER BY product_count DESC
LIMIT 10;


SELECT
    CASE 
        WHEN is_discontinued = TRUE THEN 'Discontinued'
        ELSE 'Active'
    END AS product_status,
    COUNT(*) AS product_count,
    ROUND(AVG(price_inr), 2) AS avg_price
FROM pharma_products
GROUP BY is_discontinued;


SELECT
    manufacturer,
    COUNT(*) AS total_products,
    RANK() OVER (
        ORDER BY COUNT(*) DESC
    ) AS manufacturer_rank
FROM pharma_products
GROUP BY manufacturer;


WITH ranked_products AS (
    SELECT brand_name, manufacturer, price_inr, therapeutic_class,
        ROW_NUMBER() OVER (
            PARTITION BY therapeutic_class
            ORDER BY price_inr DESC) AS rn FROM pharma_products
)
SELECT brand_name, manufacturer, price_inr, therapeutic_class
FROM ranked_products WHERE rn = 1;


SELECT
    manufacturer,
    COUNT(*) AS total_products,
    ROUND(AVG(price_inr), 2) AS avg_price
FROM pharma_products
GROUP BY manufacturer
HAVING COUNT(*) >= 5
   AND AVG(price_inr) > 200
ORDER BY avg_price DESC;


SELECT
 brand_name, therapeutic_class, price_inr,
 ROUND(
 AVG(price_inr) OVER (PARTITION BY therapeutic_class), 2) AS class_avg_price,
 ROUND( price_inr - AVG(price_inr) OVER ( PARTITION BY therapeutic_class ), 2
 ) AS price_difference
FROM pharma_products
ORDER BY price_difference DESC;


SELECT manufacturer, COUNT(*) AS total_products,
 SUM(CASE WHEN is_discontinued = FALSE THEN 1 ELSE 0 
 END
 ) AS active_products,
 ROUND( 100.0 * SUM(
 CASE 
 WHEN is_discontinued = FALSE THEN 1 
 ELSE 0 
 END ) / COUNT(*),   2
    ) AS active_product_percentage FROM pharma_products GROUP BY manufacturer HAVING COUNT(*) >= 5
ORDER BY active_product_percentage DESC;