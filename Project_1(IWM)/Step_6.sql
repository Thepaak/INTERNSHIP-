DELIMITER $$

CREATE TRIGGER trg_stock_low_after_update
AFTER UPDATE ON stock_levels
FOR EACH ROW
BEGIN
  DECLARE reorder INT;
  SELECT reorder_level INTO reorder FROM products WHERE product_id = NEW.product_id;
  IF NEW.quantity < reorder THEN
    INSERT INTO low_stock_log(product_id, warehouse_id, quantity)
    VALUES(NEW.product_id, NEW.warehouse_id, NEW.quantity);
  END IF;
END$$

DELIMITER ;
