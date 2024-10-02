CREATE DATABASE stock_exchange;
USE stock_exchange;

-- Create table for stocks
CREATE TABLE stocks_list (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    symbol VARCHAR(10) NOT NULL UNIQUE,
    company_name VARCHAR(100),
    current_price DECIMAL(10, 2),
    open_price DECIMAL(10, 2),
    high_price DECIMAL(10, 2),
    low_price DECIMAL(10, 2),
    quantity INT
);

-- Create table for clients
CREATE TABLE clients (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    account_balance DECIMAL(10, 2)
);

-- Create table for stock transactions
CREATE TABLE stock_transaction (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    stock_ID INT,
    client_ID INT,
    order_type ENUM('Buy', 'Sell'),
    quantity INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (stock_ID) REFERENCES stocks_list(ID),
    FOREIGN KEY (client_ID) REFERENCES clients(ID)
);

-- Create table for stock price history
CREATE TABLE stock_price_history (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    stock_ID INT,
    date DATE,
    old_price DECIMAL(10, 2),
    FOREIGN KEY (stock_ID) REFERENCES stocks_list(ID)
);

-- Create table for client stock portfolios
CREATE TABLE client_stock_portfolio (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    client_ID INT,
    stock_ID INT,
    quantity INT,
    stock_value DECIMAL(10, 2),
    FOREIGN KEY (client_ID) REFERENCES clients(ID),
    FOREIGN KEY (stock_ID) REFERENCES stocks_list(ID)
);

-- Create table for client account balances
CREATE TABLE account_balances (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    client_ID INT,
    balance_amount DECIMAL(10, 2),
    balance_date DATE,
    FOREIGN KEY (client_ID) REFERENCES clients(ID)
);

-- Create table for stock watchlist
CREATE TABLE stock_watchlist (
    client_ID INT,
    stock_ID INT,
    FOREIGN KEY (client_ID) REFERENCES clients(ID),
    FOREIGN KEY (stock_ID) REFERENCES stocks_list(ID)
);

