SELECT p.product_id, p.product_name, SUM(s.quantity) AS total_qty
FROM products p
JOIN stock_levels s ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_qty ASC;


SELECT p.product_id, p.product_name, w.warehouse_name, s.quantity, p.reorder_level
FROM stock_levels s
JOIN products p ON p.product_id = s.product_id
JOIN warehouses w ON w.warehouse_id = s.warehouse_id
WHERE s.quantity < p.reorder_level;
