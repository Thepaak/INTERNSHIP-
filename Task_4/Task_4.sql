use vehicle;

SELECT SUM(sales_amount) AS total_sales_amount
FROM sales;

SELECT AVG(car_price) AS average_car_price
FROM cars;


SELECT COUNT(*) AS available_car_count
FROM cars
WHERE status = 'Available';

SELECT emplo_id, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY emplo_id;

SELECT car_name, COUNT(*) AS car_count
FROM cars
GROUP BY car_name;

SELECT customer_id, COUNT(*) AS total_sales
FROM sales
GROUP BY customer_id;

SELECT emplo_id, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY emplo_id
HAVING SUM(sales_amount) > 2000000;

SELECT car_name, COUNT(*) AS car_count
FROM cars
GROUP BY car_name
HAVING COUNT(*) >=1;




