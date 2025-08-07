# Car Sales Management System - SQL Project

This project demonstrates the use of basic SQL operations such as `INSERT`, `SELECT`, `WHERE`, `ORDER BY`, `LIKE`, `BETWEEN`, `AND`, and `OR` in the context of a Car Sales Management System.

## Table Structure

The system contains the following tables:

1. **cars**  
   - `car_id` INT  
   - `brand` VARCHAR  
   - `model` VARCHAR  
   - `year` YEAR  
   - `price` DECIMAL  
   - `status` VARCHAR

2. **customers**  
   - `cust_id` INT  
   - `name` VARCHAR  
   - `phone` VARCHAR  
   - `email` VARCHAR

3. **emplo**  
   - `emp_id` INT  
   - `name` VARCHAR  
   - `designation` VARCHAR  
   - `phone` VARCHAR

4. **sales**  
   - `sale_id` INT  
   - `sale_date` DATE  
   - `amount` DECIMAL  
   - `car_id` INT  
   - `cust_id` INT  
   - `emp_id` INT

---

## Sample Data

```sql
-- Insert Cars
INSERT INTO cars VALUES (1003, 'Benze', 'GLS', '2020', 700000.00, 'Available');
INSERT INTO cars VALUES (1004, 'Toyato', 'INNOVA', '2022', 900000.00, 'Sold');

-- Insert Customers
INSERT INTO customers VALUES (003, 'Sriraam', '+919638527410', 'sriraam12@gmail.com');
INSERT INTO customers VALUES (004, 'Kavi', '+917418529630', 'kavi8702@gmail.com');

-- Insert Employees
INSERT INTO emplo VALUES (101, 'John', 'Sales Manager', '+918894561230');

--Insert Sales
INSERT INTO sales VALUES (02, '2025-08-05', 9000000.00, 1002, 002, 100);
