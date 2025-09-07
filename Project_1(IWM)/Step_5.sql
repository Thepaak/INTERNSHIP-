DELIMITER $$

CREATE PROCEDURE transfer_stock(
  IN p_product_id INT,
  IN p_from_wh INT,
  IN p_to_wh INT,
  IN p_qty INT
)
BEGIN
  DECLARE from_qty INT;

  SELECT quantity INTO from_qty
  FROM stock_levels
  WHERE product_id = p_product_id AND warehouse_id = p_from_wh
  FOR UPDATE;

  IF from_qty IS NULL OR from_qty < p_qty THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insufficient stock in source warehouse';
  END IF;

  UPDATE stock_levels
  SET quantity = quantity - p_qty
  WHERE product_id = p_product_id AND warehouse_id = p_from_wh;

  INSERT INTO stock_levels(product_id, warehouse_id, quantity)
  VALUES (p_product_id, p_to_wh, p_qty)
  ON DUPLICATE KEY UPDATE quantity = quantity + VALUES(quantity);
END$$

DELIMITER ;

