# Car Sales Database

## Overview

This project demonstrates how to create and manage a simple **Car Sales Management System** using MySQL.
It includes three main tables:

* **cars** → stores car details.
* **customers** → stores customer details.
* **sales** → stores sales transaction details.

It also includes examples of `INSERT`, `UPDATE`, `DELETE`, and different types of **JOIN queries**.

---

## Database Schema

### Tables

1. **cars**

   * `car_id` (Primary Key)
   * `car_name`
   * `model`
   * `year`
   * `price`
   * `status`

2. **customers**

   * `cust_id` (Primary Key)
   * `cust_name`
   * `phone`
   * `email`

3. **sales**

   * `sales_id` (Primary Key)
   * `car_id` (Foreign Key → cars.car\_id)
   * `cust_id` (Foreign Key → customers.cust\_id)
   * `sales_amount`
   * `sales_date`

---

## Sample Data

```sql
-- Insert data into cars
INSERT INTO cars VALUES
(1003, 'Benze', 'GLS', '2020', 700000.00, 'Available'),
(1004, 'Toyato', 'INNOVA', '2022', 900000.00, 'Sold');

-- Insert data into customers
INSERT INTO customers VALUES
(003, 'Sriraam', '+919638527410', 'sriraam12@gmail.com'),
(004, 'Kavi', '+917418529630', 'kavi8702@gmail.com');
```

---

## SQL Queries

### 1. Insert Data

```sql
INSERT INTO sales VALUES (2001, 1004, 004, 900000.00, '2025-08-10');
```

### 2. Update Data

```sql
UPDATE cars
SET status = 'Sold'
WHERE car_id = 1003;
```

### 3. Delete Data

```sql
DELETE FROM customers
WHERE cust_id = 003;
```

---

## Join Examples

### INNER JOIN

```sql
SELECT c.car_name, cu.cust_name, s.sales_amount
FROM sales s
INNER JOIN cars c ON s.car_id = c.car_id
INNER JOIN customers cu ON s.cust_id = cu.cust_id;
```

### LEFT JOIN

```sql
SELECT c.car_name, s.sales_amount
FROM cars c
LEFT JOIN sales s ON c.car_id = s.car_id;
```

### RIGHT JOIN

```sql
SELECT c.car_name, s.sales_amount
FROM cars c
RIGHT JOIN sales s ON c.car_id = s.car_id;
```

### FULL OUTER JOIN (MySQL Simulation)

```sql
SELECT c.car_id, c.car_name, s.sales_id, s.sales_amount
FROM cars c
LEFT JOIN sales s ON c.car_id = s.car_id
UNION
SELECT c.car_id, c.car_name, s.sales_id, s.sales_amount
FROM cars c
RIGHT JOIN sales s ON c.car_id = s.car_id;
```
---

## Requirements

* MySQL Server (5.7+ or 8.0+)
* MySQL Workbench

---

## How to Run

1. Create the database:

   ```sql
   CREATE DATABASE car_sales_db;
   USE car_sales_db;
   ```
2. Create tables using the schema above.
3. Insert sample data.
4. Run the queries from the `README.md`.
---
