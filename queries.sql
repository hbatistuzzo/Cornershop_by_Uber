CREATE DATABASE cornershop;

-- 1. Calculate the number of orders per day of the week, distinguishing if the orders are on_demand.

SELECT * FROM orders;

SELECT COUNT(order_id), dow, on_demand,
CASE
	WHEN dow = 0 THEN 'Sunday'
    WHEN dow = 1 THEN 'Monday'
    WHEN dow = 2 THEN 'Tuesday'
    WHEN dow = 3 THEN 'Wednesday'
    WHEN dow = 4 THEN 'Thursday'
    WHEN dow = 5 THEN 'Friday'
    WHEN dow = 6 THEN 'Saturday'
    ELSE 'Total' 
END as weekday
FROM orders
GROUP BY dow, on_demand WITH ROLLUP
ORDER BY dow;


-- 2. Calculate the average quantity of distinct products that each order has, grouped by store
SELECT * FROM order_product;

SELECT order_product.order_id,COUNT(DISTINCT(product_id)) as 'number of products',store FROM orders
JOIN order_product on order_product.order_id = orders.order_id
JOIN storebranch on storebranch.store_branch_id = orders.store_branch_id
GROUP BY orders.order_id; -- OH OH 

-- 3. Calculate the average found rate(*) of the orders grouped by the product format and day of the week.
-- (*) Found Rate = ratio between the quantity product found vs the number of products ordered by the customer.

SELECT * FROM order_product;

SELECT order_id, COUNT(DISTINCT(product_id)), quantity_found
FROM order_product
GROUP BY order_id;

-- 4. Calculate the average error and mean squared error of our estimation model for each hour of the day.

-- 5. Calculate the number of orders in which the picker_id and driver_id are different.
SELECT COUNT(*) from orders
WHERE picker_id != driver_id;



SELECT * FROM orders;

SELECT COUNT(DISTINCT(store)) FROM storebranch; -- 113 branches, 17 stores