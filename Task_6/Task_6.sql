use vehicle;

SELECT 
    car_id,
    car_name,
    car_model,
    car_price,
    (SELECT SUM(sales_amount) 
     FROM sales 
     WHERE sales.car_id = cars.car_id) AS total_sales_for_car
FROM cars;

SELECT customer_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM sales
    WHERE car_id IN (
        SELECT car_id 
        FROM cars
        WHERE car_price > 500000
    )
);

SELECT 
    emplo_id,
    emplo_name,
    avg_sales
FROM (
    SELECT 
        e.emplo_id,
        e.emplo_name,
        AVG(s.sales_amount) AS avg_sales
    FROM emplo e
    JOIN sales s ON e.emplo_id = s.emplo_id
    GROUP BY e.emplo_id, e.emplo_name
) AS emp_avg_sales;

SELECT car_id, car_name, car_price
FROM cars c
WHERE car_price > (
    SELECT AVG(c2.car_price)
    FROM cars c2
    JOIN sales s2 ON c2.car_id = s2.car_id
    WHERE s2.emplo_id IN (
        SELECT s3.emplo_id
        FROM sales s3
        WHERE s3.car_id = c.car_id
    )
);


