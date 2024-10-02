# Stock Exchange DBMS

This project demonstrates the design and implementation of a stock exchange database system using MySQL. The system allows clients to buy and sell stocks, track their portfolios, and provides real-time data for stock price monitoring. 

## Project Features:
- Creation of relational database tables for stock exchange management.
- Handling buy and sell transactions with stored procedures.
- Tracking stock price history using triggers.
- Performing analysis on stock performance, client portfolios, and market activity using SQL queries.

## Technologies:
- MySQL
- Python (for database connection and query execution)
- SQL (for data manipulation and retrieval)

## Folder Structure:
- `sql_scripts/`: SQL scripts for creating tables, inserting data, and defining stored procedures and triggers.
- `data/`: Sample CSV data for populating the database.
- `ERD/`: The entity-relationship diagram representing the database structure.
- `src/`: Python scripts for connecting to the database and running SQL queries.
- `docs/`: Project documentation including the original project report and database design details.
- `results/`: Contains the query results and logs.

## Setup Instructions:
1. Clone the repository:  
   ```bash
   git clone https://github.com/naseef944/Stock_exchange_database.git
2. Create the database schema in MySQL using the SQL scripts in sql_scripts/.
3. Load the sample data using the provided scripts or insert your own data.
4. Run Python scripts in src/ to interact with the database and perform analysis.
