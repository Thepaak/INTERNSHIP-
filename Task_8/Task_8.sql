use vehicle;

DELIMITER $$

CREATE PROCEDURE GetSalesByCarName(IN carName VARCHAR(50))
BEGIN
    SELECT s.sales_is, s.sales_date, s.sales_amount, 
           c.car_name, c.car_model, 
           cu.customer_name, 
           e.emplo_name, e.emplo_role
    FROM sales s
    JOIN cars c ON s.car_id = c.car_id
    JOIN customers cu ON s.customer_id = cu.customer_id
    JOIN emplo e ON s.emplo_id = e.emplo_id
    WHERE c.car_name = carName;
END$$

DELIMITER ;

CALL GetSalesByCarName('ROLLS ROYS');

DELIMITER $$

CREATE FUNCTION TotalSalesForCar(carName VARCHAR(50))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);

    SELECT SUM(sales_amount) 
    INTO total
    FROM sales s
    JOIN cars c ON s.car_id = c.car_id
    WHERE c.car_name = carName;

    RETURN IFNULL(total, 0);
END$$

DELIMITER ;

SELECT TotalSalesForCar('ROLLS ROYS') AS Total_ROLLS_Sales;

