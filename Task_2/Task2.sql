use vehicle;


insert into cars values(1003,'Benze','GLS','2020',700000.00,'Available');
insert into cars values(1004,'Toyato','INNOVA','2022',900000.00,'Sold');
 
 insert into customers values(003,'Sriraam','+919638527410','sriraam12@gmail.com');
 insert into customers values(004,'Kavi','+917418529630','kavi8702@gmail.com');
 
 insert into emplo values(101,'John','Sales Manager','+918894561230');
 
 insert into sales values(02,'2025-08-05',9000000.00,1002,002,100);
 
 UPDATE cars
SET status = 'Available'
WHERE car_id = 1004;

delete from sales
where sales_is=02;

select * from sales;
select * from cars;