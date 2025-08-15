## Objective
To learn and implement reusable SQL blocks in MySQL using **Stored Procedures** and **Functions**.  
This helps in modularizing SQL logic, improving code reusability, and reducing redundancy.

---

## Tools Used
- **MySQL Workbench** (Recommended)
- Any MySQL-compatible database (SQLite does not support stored procedures/functions natively)

---

## Deliverables
1. **Stored Procedure** – To fetch sales details for a given car name.
2. **Function** – To calculate the total sales amount for a given car name.

---

## Database Schema Reference
The stored procedure and function are based on the following tables:

- **cars** (`car_id`, `car_name`, `car_model`, ...)
- **customers** (`customer_id`, `customer_name`, ...)
- **emplo** (`emplo_id`, `emplo_name`, `emplo_role`, ...)
- **sales** (`sales_is`, `sales_date`, `sales_amount`, `car_id`, `customer_id`, `emplo_id`)

---

## Stored Procedure

### Definition
```sql
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
```
