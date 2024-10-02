import database_connection as db

def get_top_portfolio_clients():
    conn = db.connect()
    cursor = conn.cursor()
    query = """
    SELECT clients.name, SUM(client_stock_portfolio.stock_value) AS total_portfolio_value
    FROM client_stock_portfolio
    JOIN clients ON client_stock_portfolio.client_ID = clients.ID
    GROUP BY clients.ID
    ORDER BY total_portfolio_value DESC
    LIMIT 5;
    """
    cursor.execute(query)
    results = cursor.fetchall()
    for row in results:
        print(f"Client: {row[0]}, Portfolio Value: {row[1]}")
    cursor.close()
    conn.close()

