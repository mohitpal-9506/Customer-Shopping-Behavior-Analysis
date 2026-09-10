CREATE DATABASE shopping_db;
USE shopping_db;
CREATE TABLE customer_shopping (
    customer_id INT,
    age INT,
    gender VARCHAR(20),
    item_purchased VARCHAR(100),
    category VARCHAR(50),
    purchase_amount INT,
    location VARCHAR(50),
    size VARCHAR(20),
    color VARCHAR(30),
    season VARCHAR(20),
    review_rating FLOAT,
    subscription_status VARCHAR(20),
    shipping_type VARCHAR(50),
    discount_applied VARCHAR(10),
    promo_code_used VARCHAR(10),
    previous_purchases INT,
    payment_method VARCHAR(50),
    frequency_of_purchases VARCHAR(50)
);
SELECT * FROM customer_shopping;
SELECT COUNT(*) FROM customer_shopping;

SELECT SUM(purchase_amount)
FROM customer_shopping;

SELECT gender,
SUM(purchase_amount)
FROM customer_shopping
GROUP BY gender;
SELECT payment_method,
COUNT(*) AS Total_Transactions
FROM customer_shopping
GROUP BY payment_method
ORDER BY Total_Transactions DESC;
SELECT season,
SUM(purchase_amount) AS Sales
FROM customer_shopping
GROUP BY season;