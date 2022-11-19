# Cornershop_by_Uber
 
![GitHub top language](https://img.shields.io/github/languages/top/hbatistuzzo/Cornershop_by_Uber)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/hbatistuzzo/Cornershop_by_Uber)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/hbatistuzzo/Cornershop_by_Uber)
![GitHub last commit](https://img.shields.io/github/last-commit/hbatistuzzo/Cornershop_by_Uber)

Project status: In Progress
<p align="right"><img src="https://coursereport-production.imgix.net/uploads/school/logo/84/original/logo-ironhack-blue.png?w=200&h=200&dpr=1&q=7" width="40%" alt="Logo"></p>

# Project Summary

<img src="images/UberCornershop.png" align="right" width="40%"/>
Cornershop, now acquired by Uber, is a Latin American delivery startup focused on groceries/specialty store services. This project is based on their Business Intelligence challenge for Data Analysts, which aims to optimize their
daily operation. Their business runs in more than 20 cities, reaching tens of thousands of orders per day. Hence, in their words, "One key element to determine how many orders we can accept, when we must begin to work on an order and also, 
at which time can we promise delivery to the customer, is the **time estimation**."



Given a database comprised of 4 tables, `Orders table`, `Order_Product table`, `Shoppers table` and `Storebranch table`, the goal is to answer a set of questions regarding their operation.
 
---

# Technologies

- Python 3.8.13
	- Pandas 1.4.4
	- Numpy 1.20.3
	- Pycaret 2.3.10
	- Seaborn 0.11.2
	- Matplotlib 3.5.2
	- SQLAlchemy 1.4.42
	- Scikit-learn 1.1
- MySQL 8.0
- Tableau 2022.3

---

# Project Description

## Tables Description


***Orders table***:

- order_id: identifier of the order.
- lat and lng: Latitude and Longitude of the delivery address.
- dow: day of the week of the promised delivery date of the order. 0: Sunday 6: Saturday.
- promised_time: Hour of the delivery time *promised* to the customer.
- actual_time: Hour in which the order was *delivered* to the customer.
- on_demand: If the order was requested in "Less than 90 minutes" or in a future time window.
- picker_id:  identifier of the shopper that made the picking of the order. 
- driver_id: identifier of the shopper that made the delivery of the order.
- store_branch_id: identifier of the store branch in which the order was purchased.
- total_minutes: total time length of the order (from purchase to delivery)

***Order_Product table***:

- order_id: identifier of the order.
- product_id: identifier of the product.
- quantity: quantity of the product requested by the customer.
- quantity_found: quantity found of the product by the shopper.
- buy_unit: format in which the product was sold (unit or KG).

***Shoppers table***:

- shopper_id: identifier of the Shopper.
- seniority: level of shopper's experience.
- found_rate: historic percentage of the products that the shopper found.
- picking_speed: historic velocity of the shopper's picking of products. ==(minutes per product)==
- accepted_rate: historic percentage of orders accepted by the shopper.
- rating: historic customer's evaluation/rating to the shopper.

***Storebranch table***:

- store_branch_id: identifier of the store branch.
- store: identifier of the store in which the branch belongs to.
- lat y lng: Latitude and Longitude of the branch location.

## Questions from the case

1. Calculate the number of orders per day of the week, distinguishing if the orders are on_demand.

2. Calculate the average quantity of distinct products that each order has, grouped by store

3. Calculate the average found rate(*) of the orders grouped by the product format and day of the week.

4. Calculate the average error and mean squared error of our estimation model for each hour of the day.

5. Calculate the number of orders in which the picker_id and driver_id are different.

---

# Steps

---

# Conclusion