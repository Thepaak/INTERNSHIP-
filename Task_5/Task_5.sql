use vehicle;
SELECT 
    s.sales_is,
    s.sales_date,
    s.sales_amount,
    c.car_name,
    cu.customer_name,
    e.emplo_name
FROM sales s
INNER JOIN cars c ON s.car_id = c.car_id
INNER JOIN customers cu ON s.customer_id = cu.customer_id
INNER JOIN emplo e ON s.emplo_id = e.emplo_id;

SELECT 
    s.sales_is,
    s.sales_amount,
    c.car_name
FROM sales s
RIGHT JOIN cars c ON s.car_id = c.car_id;




SELECT 
    c.car_id,
    c.car_name,
    s.sales_is,
    s.sales_amount
FROM cars c
LEFT JOIN sales s ON c.car_id = s.car_id;

SELECT 
    c.car_id,
    c.car_name,
    s.sales_is,
    s.sales_amount
FROM cars c
LEFT JOIN sales s ON c.car_id = s.car_id

UNION

SELECT 
    c.car_id,
    c.car_name,
    s.sales_is,
    s.sales_amount
FROM cars c
RIGHT JOIN sales s ON c.car_id = s.car_id;


