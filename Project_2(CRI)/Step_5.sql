DELIMITER $$

CREATE TRIGGER trg_update_chain
BEFORE INSERT ON evidence
FOR EACH ROW
BEGIN
  SET NEW.chain_of_custody = CONCAT('Added on ', CURRENT_DATE, ' by system');
END$$

DELIMITER ;


INSERT INTO evidence (case_id, description, collected_date)
VALUES (1,'Fingerprint sample','2025-08-27');

SELECT * FROM evidence;
