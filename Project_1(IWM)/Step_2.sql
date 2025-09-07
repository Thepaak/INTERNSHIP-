INSERT INTO suppliers VALUES
(1,'Global Supply Co','global@supply.com'),
(2,'Metro Traders','metro@traders.com');

INSERT INTO products VALUES
(101,'USB Keyboard','Peripherals',650.00,10),
(102,'24-inch Monitor','Displays',8500.00,8),
(103,'Laptop Stand','Accessories',1200.00,6),
(104,'USB Mouse','Accessories',500.00,10);


INSERT INTO warehouses VALUES
(1,'Central WH','Chennai'),
(2,'North WH','Delhi');

INSERT INTO stock_levels VALUES
(101,1,30),(101,2,5),
(102,1,12),(102,2,7),
(103,1,3),(103,2,20),
(104,1,3),(104,2,5);

INSERT INTO product_suppliers VALUES
(101,1),(102,2),(103,1);
