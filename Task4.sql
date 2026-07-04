

-- create table Customers (customer_id serial primary key,	customer_name varchar,	city varchar,	phone_number bigint,	email varchar,	registration_date date);

-- create table orders (order_id serial primary key,	customer_id	int references customers(customer_id), order_date date,	order_amount int,	delivery_city varchar,	payment_mode varchar);

-- create table Products (product_id serial primary key,	product_name varchar,	category varchar,	price int,	stock_quantity int,	supplier_name varchar,	supplier_city varchar,	supply_date date);

-- create table order_items (order_item_id int, order_id int references orders(order_id),	product_id int references products(product_id),	quantity int,	total_price int);




-- copy Customers from 'E:\ARC Classes\SQL\Task\Table.1--customers.csv' delimiter ',' csv header;

-- copy orders from 'E:\ARC Classes\SQL\Task\Table.2--orders.csv' delimiter ',' csv header;

-- copy products from 'E:\ARC Classes\SQL\Task\Table.3--products.csv' delimiter ',' csv header;

-- copy order_items from 'E:\ARC Classes\SQL\Task\Table.4--order_items.csv' delimiter ',' csv header;






-- 1. JOINS 
-- Task 1: 
-- Retrieve the customer_name, city, and order_date for each customer who placed an order in 2023 by joining the customers and orders tables.

-- select customer_name,city,order_date from customer as c join order_ as ord on c.customer_id=ord.customer_id and order_date between '2023-01-01' and '2023-12-30';

-- Task 2: 
-- Get a list of all products (with product_name, category, and total_price) ordered by customers living in Mumbai, by joining the customers, orders, order_items, and products tables.

-- select product_name,category,total_price,city from customer as c join order_ as ord on c.customer_id=ord.customer_id
-- join order_item as ordt on ordt.order_id=ord.order_id  join product as pr on pr.product_id=ordt.product_id and city='Mumbai';

-- Task 3: 
-- Find all orders where customers paid using 'Credit Card' and display the customer_name, order_date, and total_price by joining the customers, orders, and order_items tables.

-- select customer_name,order_date,total_price,payment_mode from customer as c join order_ as ord on c.customer_id=ord.customer_id join order_item as oi on oi.order_id=ord.order_id join product as pr  on oi.product_id=pr.product_id and payment_mode='Credit Card'; 

-- Task 4: 
-- Display the product_name, category, and the total_price for all products ordered in the first half of 2023 (January - June) by joining the orders, order_items, and products tables. 

-- select product_name,category,total_price,order_date from order_ as ord join order_item as oi on ord.order_id=oi.order_id join product as pr on pr.product_id=oi.product_id and  order_date between '2023-01-01' and '2023-06-01';

-- Task 5: 
-- Show the total number of products ordered by each customer, displaying customer_name and total products ordered, using joins between customers, orders, and order_items. 

select customer_name, count(product_id) from customer as c join order_ as
-- 2. DISTINCT 
-- Task 1: 
-- Get a distinct list of cities where customers are located. 

-- select distinct city from customers;

-- Task 2: 
-- Retrieve distinct supplier_name from the products table.

-- select distinct supplier_name from products;

-- Task 3: 
-- Find distinct payment methods used in the orders table. 

-- select distinct payment_mode from orders;

-- Task 4: 
-- List all distinct product categories that have been ordered. 

-- select distinct category from products;

-- Task 5: 
-- Find distinct cities from which suppliers supply products by querying the products table. 

-- select distinct supplier_city, supplier_name from products;



-- 3. ORDER BY 
-- Task 1: 
-- List all customers sorted by customer_name in ascending order. 

--select customer_name from customers order by customer_name asc;

-- Task 2: 
-- Display all orders sorted by total_price in descending order. 

-- select * from order_items order by total_price desc;

-- Task 3: 
-- Retrieve a list of products sorted by price in ascending order and then by category in descending order. 

-- select product_name from products order by price asc , category desc;

-- Task 4: 
-- Sort all orders by order_date in descending order and display the order_id, customer_id, and order_date. 

-- select order_id,customer_id,order_date from orders order by order_date desc;

-- Task 5: 
-- Get the list of cities where orders were placed, sorted in alphabetical order, and display the total number of orders placed in each city. 




-- 4. LIMIT & OFFSET 
-- Task 1: 
-- Retrieve the first 10 rows from the customers table ordered by customer_name. 

-- select * from customers limit 10;

-- Task 2: 
-- Display the top 5 most expensive products (sorted by price in descending order).

-- select * from products order by price desc limit 5;

-- Task 3: 
-- Get the orders for the 11th to 20th customers (using OFFSET and LIMIT), sorted by customer_id. 

-- select * from customers offset 10 limit 10 ;

-- Task 4: 
-- List the first 5 orders placed in 2023, displaying order_id, order_date, and customer_id. 

-- select * from orders where order_date between '2023-01-01' and '2023-12-31' order 

-- select order_id,order_date,customer_id from orders order by order_date desc limit 5;

-- Task 5: 
-- Fetch the next 10 distinct cities where orders were placed, using LIMIT and OFFSET. 





-- 6. SET OPERATIONS 
-- Task 1: 
-- Get the list of customers who have placed orders in both 2022 and 2023 (use INTERSECT).

-- select customer.customer_id,customer_name
-- from order_ 
-- join customer on order_.customer_id=customer.customer_id 
-- and order_date between '2023-01-01' and '2023-12-30'

-- intersect 

-- select customer.customer_id,customer_name
-- from order_ 
-- join customer on order_.customer_id=customer.customer_id
-- where order_date between '2022-01-01' and '2022-12-30';

-- SELECT customer.customer_id, customer_name
-- FROM order_
-- JOIN customer 
-- ON order_.customer_id = customer.customer_id
-- WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31'

-- INTERSECT

-- SELECT customer.customer_id, customer_name
-- FROM order_
-- JOIN customer 
-- ON order_.customer_id = customer.customer_id
-- WHERE order_date BETWEEN '2022-01-01' AND '2022-12-31';


-- Task 2: 
-- Find the products that were ordered in 2022 but not in 2023 (use EXCEPT). 







-- Task 3: 
-- Display the list of supplier_city from the products table that do not match any customer_city in the customers table (use EXCEPT). 
-- Task 4: 
-- Show a combined list of supplier_city from products and city from customers (use UNION). 
-- Task 5: 
-- Find the list of product_name from the products table that were ordered in 2023 (use INTERSECT with the orders and order_items tables). 



  
-- 7. SUBQUERIES 
-- Task 1: 
-- Find the names of customers who placed orders with a total price greater than the average total price of all orders. 
-- Task 2: 
-- Get a list of products that have been ordered more than once by any customer. 
-- Task 3: 
-- Retrieve the product names that were ordered by customers from Pune using a subquery. 
-- Task 4: 
-- Find the top 3 most expensive orders using a subquery. 
-- Task 5: 
-- Get the customer names who placed orders for a product that costs more than ₹30,000 using a subquery. 
 





