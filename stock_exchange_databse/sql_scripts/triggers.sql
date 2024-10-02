DELIMITER //

CREATE TRIGGER before_stock_update 
BEFORE UPDATE ON stocks_list
FOR EACH ROW
BEGIN
    -- Log the old price in the price history
    IF (OLD.current_price != NEW.current_price) THEN
        INSERT INTO stock_price_history (stock_ID, date, old_price)
        VALUES (OLD.ID, CURDATE(), OLD.current_price);
    END IF;
END //

DELIMITER ;

