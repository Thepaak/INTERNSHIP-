CREATE OR REPLACE VIEW v_stock_summary AS
SELECT p.product_id, p.product_name, p.category,
       w.warehouse_name, s.quantity
FROM stock_levels s
JOIN products p ON p.product_id = s.product_id
JOIN warehouses w ON w.warehouse_id = s.warehouse_id;


SELECT * FROM v_stock_summary ORDER BY product_name, warehouse_name;
