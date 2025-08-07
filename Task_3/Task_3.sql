use vehicle;
select * from cars;
select car_id from cars;
select car_name from cars where car_id=1002;
select * from cars where car_id=1003;

SELECT * FROM cars
ORDER BY car_price DESC;

SELECT * FROM cars
WHERE model LIKE 'G%';

SELECT * FROM cars
WHERE car_price BETWEEN 700000 AND 900000;

SELECT * FROM cars
WHERE status = 'Available' AND car_price > 800000;

SELECT * FROM customers
WHERE customer_name = 'Sriraam' OR phone_num LIKE '%9630';


