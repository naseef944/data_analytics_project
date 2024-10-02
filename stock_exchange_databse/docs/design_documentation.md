# Stock Exchange Database Design

## Overview:
This document outlines the design of the stock exchange database system, including the relational schema, entity-relationship diagram, and key features like transaction handling, price history tracking, and client portfolio management.

## Database Tables:
- **stocks_list**: Contains stock information.
- **clients**: Stores client details.
- **stock_transaction**: Logs all buy and sell transactions.
- **client_stock_portfolio**: Tracks the stocks held by each client.
- **account_balances**: Logs changes to client account balances.

## Stored Procedures:
- `Buy_Stock`: Handles stock purchases by clients.
- `Sell_Stock`: Handles stock selling (to be implemented).

## Triggers:
- `before_stock_update`: Logs stock price changes into the `stock_price_history` table.

## Analysis Queries:
- Top 5 clients by portfolio value.
- Most watched stocks.
- Least bought stock.
- Clients actively trading.

