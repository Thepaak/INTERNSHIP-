CREATE DATABASE inventory_db;
USE inventory_db;


CREATE TABLE suppliers (
  supplier_id INT PRIMARY KEY,
  supplier_name VARCHAR(100) NOT NULL,
  contact_email VARCHAR(120)
);


CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(120) NOT NULL,
  category VARCHAR(60),
  unit_price DECIMAL(10,2) NOT NULL,
  reorder_level INT DEFAULT 5
);


CREATE TABLE warehouses (
  warehouse_id INT PRIMARY KEY,
  warehouse_name VARCHAR(100) NOT NULL,
  city VARCHAR(80)
);


CREATE TABLE stock_levels (
  product_id INT,
  warehouse_id INT,
  quantity INT NOT NULL,
  PRIMARY KEY (product_id, warehouse_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (warehouse_id) REFERENCES warehouses(warehouse_id)
);


CREATE TABLE product_suppliers (
  product_id INT,
  supplier_id INT,
  PRIMARY KEY (product_id, supplier_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);


CREATE TABLE low_stock_log (
  log_id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT,
  warehouse_id INT,
  quantity INT,
  logged_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);




