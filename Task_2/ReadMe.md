# Car Sales System - Database Project

## Overview

This project is part of the *SQL Developer Internship - Task 1. It involves designing and building a relational database schema for managing **car sales*, including cars, customers, employees, and sales transactions.

---

## Objective

- Design a relational database using SQL
- Identify entities and define relationships
- Create normalized tables using DDL
- Implement keys and constraints
- Write basic update and delete operations
- Generate an ER diagram

---

## Entities and Attributes

1. *Customers*
   - customer_id (Primary Key)
   - name
   - phone
   - email

2. *Cars*
   - car_id (Primary Key)
   - brand
   - model
   - price
   - status (available/sold)

3. *Employees*
   - employee_id (Primary Key)
   - name
   - role
   - contact

4. *Sales*
   - sale_id (Primary Key)
   - sale_date
   - amount
   - car_id (Foreign Key)
   - customer_id (Foreign Key)
   - employee_id (Foreign Key)

---

## Relationships

- One *customer* can have many *sales*
- One *employee* can handle many *sales*
- One *car* is linked to one *sale*

---

## SQL Schema (DDL)

```sql
CREATE DATABASE car_sales;
USE car_sales;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE cars (
    car_id INT PRIMARY KEY,
    brand VARCHAR(50),
    model VARCHAR(50),
    price DECIMAL(10,2),
    status VARCHAR(20)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(50),
    contact VARCHAR(15)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    sale_date DATE,
    amount DECIMAL(10,2),
    car_id INT,
    customer_id INT,
    employee_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);