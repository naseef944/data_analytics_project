-- Insert sample clients
INSERT INTO clients (name, email, account_balance) VALUES
('Alice', 'alice@example.com', 50000),
('Bob', 'bob@example.com', 30000),
('Charlie', 'charlie@example.com', 25000);

-- Insert sample stocks
INSERT INTO stocks_list (symbol, company_name, current_price, open_price, high_price, low_price, quantity) VALUES
('AAPL', 'Apple Inc.', 150.00, 145.00, 151.00, 144.50, 1000),
('GOOG', 'Google Inc.', 2800.00, 2750.00, 2850.00, 2700.00, 500);

-- Insert sample transactions
INSERT INTO stock_transaction (stock_ID, client_ID, order_type, quantity, order_date, amount) VALUES
(1, 1, 'Buy', 10, '2024-01-01', 1500.00),
(2, 2, 'Buy', 5, '2024-01-01', 14000.00);

