use vehicle;

CREATE VIEW SalesDetails AS
SELECT 
    s.sales_is,
    s.sales_date,
    s.sales_amount,
    c.car_name,
    c.car_model,
    cu.customer_name,
    e.emplo_name,
    e.emplo_role
FROM sales s
JOIN cars c ON s.car_id = c.car_id
JOIN customers cu ON s.customer_id = cu.customer_id
JOIN emplo e ON s.emplo_id = e.emplo_id;

SELECT * 
FROM SalesDetails
WHERE car_name = 'BMW';


SELECT * FROM SalesDetails;

CREATE VIEW AvailableCars AS
SELECT car_id, car_name, car_model, car_price
FROM cars
WHERE Status = 'Available';

CREATE VIEW CustomerPublicInfo AS
SELECT customer_name, phone_num
FROM customers;



