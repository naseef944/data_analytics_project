import database_connection as db

def buy_stock(client_id, stock_id, quantity):
    conn = db.connect()
    cursor = conn.cursor()
    cursor.callproc('Buy_Stock', [client_id, stock_id, quantity])
    conn.commit()
    cursor.close()
    conn.close()

def sell_stock(client_id, stock_id, quantity):
    # Implement the sell stock procedure call
    pass

