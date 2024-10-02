DELIMITER //

CREATE PROCEDURE Buy_Stock(IN client_id INT, IN stock_id INT, IN quantity INT)
BEGIN
    DECLARE stock_price DECIMAL(10,2);
    DECLARE balance DECIMAL(10,2);

    -- Get current price of the stock
    SELECT current_price INTO stock_price FROM stocks_list WHERE ID = stock_id;

    -- Get client balance
    SELECT account_balance INTO balance FROM clients WHERE ID = client_id;

    -- Check if balance is sufficient
    IF (balance >= (stock_price * quantity)) THEN
        -- Update client's balance
        UPDATE clients SET account_balance = account_balance - (stock_price * quantity) WHERE ID = client_id;
        
        -- Update stock quantity
        UPDATE stocks_list SET quantity = quantity - quantity WHERE ID = stock_id;
        
        -- Insert transaction record
        INSERT INTO stock_transaction (stock_ID, client_ID, order_type, quantity, order_date, amount) 
        VALUES (stock_id, client_id, 'Buy', quantity, CURDATE(), stock_price * quantity);
        
        -- Update portfolio
        INSERT INTO client_stock_portfolio (client_ID, stock_ID, quantity, stock_value)
        VALUES (client_id, stock_id, quantity, stock_price * quantity);
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insufficient balance';
    END IF;
END //

DELIMITER ;

