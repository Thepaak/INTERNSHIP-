# Car Sales System - Database Schema

## Project Overview

This project is part of the SQL Developer Internship Task 1. It involves designing and creating a relational database schema for a *Car Sales System* using MySQL.

---

## Objective

- Design a well-structured relational database
- Identify entities and relationships
- Create SQL tables with proper constraints
- Generate an ER diagram

---

## Entities & Relationships

*Entities:*
- Customers
- Cars
- Employees
- Sales

*Relationships:*
- One customer can purchase many cars
- One employee can handle many sales
- One car is associated with one sale (once sold)

---

## Database Schema (DDL)

The SQL script includes the following tables:

- customers - Stores buyer information
- cars - Stores vehicle inventory
- employees - Stores sales employee data
- sales - Stores transaction records linking cars, customers, and employees

## sql

create database vehicle;
use vehicle;

create table cars(car_id int primary key, car_name varchar(50), car_model varchar(50), model_year varchar(50), car_price decimal(10,2),Status varchar(20));

create table customers(customer_id int primary key, customer_name varchar(50),phone_num varchar(15), email varchar(50));

create table emplo(emplo_id int primary key,emplo_name varchar(50),emplo_role varchar(50),emplo_contact varchar(50));

create table sales(sales_is int primary key,sales_date datetime, sales_amount decimal(10,2), car_id int,customer_id int,emplo_id int,foreign key(car_id) references cars(car_id),
 foreign key (customer_id) references customers(customer_id), foreign key (emplo_id) references emplo(emplo_id));


 ## ER Diagram
 <img width="1024" height="1024" alt="image" src="https://github.com/user-attachments/assets/1d20c0e5-9380-4af8-bad2-d0c7e585b6fd" />


 
