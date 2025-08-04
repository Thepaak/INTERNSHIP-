create database vehicle;
use vehicle;
create table cars(car_id int primary key, car_name varchar(50), car_model varchar(50), model_year varchar(50), car_price decimal(10,2),Status varchar(20));
create table customers(customer_id int primary key, customer_name varchar(50),phone_num varchar(15), email varchar(50));
create table emplo(emplo_id int primary key,emplo_name varchar(50),emplo_role varchar(50),emplo_contact varchar(50));
create table sales(sales_is int primary key,sales_date datetime, sales_amount decimal(10,2), car_id int,customer_id int,emplo_id int,foreign key(car_id) references cars(car_id),
 foreign key (customer_id) references customers(customer_id), foreign key (emplo_id) references emplo(emplo_id));
 insert into cars values(1001,'BMW','X6','2022',600000.00,'Available');
 insert into cars values(1002,'ROLLS ROYS','GOST','2020',9000000.00,'Sold');
 
 insert into customers values(001,'Rahul','+919874561230','rahul01@gmail.com');
 insert into customers values(002,'thepaak','+919790609747','thepaak02@gmail.com');
 
 insert into emplo values(100,'ruban','Sales Executive','+917894561230');
 
 insert into sales values(01,'2025-08-04',90000000.00,1002,002,100);
 
 SELECT s.sales_is,s.sales_date,c.customer_name,car.car_name,car.car_model,s.sales_amount,e.emplo_name
 from sales s
 join customers c on s.customer_id=c.customer_id
 join cars car on s.car_id=car.car_id
 join emplo e on s.emplo_id=e.emplo_id;
 
 