from sqlite3 import Cursor

def fetch_products(cur: Cursor):
    cur.execute('SELECT p.id, p.name, p.sku, p.image, p.price, p.sale_price FROM products p')
    return cur.fetchall()

def fetch_product_details(cur: Cursor):
    cur.execute('SELECT pd.id, pd.product_id, pd.size, pd.quantity FROM product_details pd')
    return cur.fetchall()

def update_product_detail(cur: Cursor, id: int, quantity: int):
    cur.execute('UPDATE product_details SET quantity = quantity - ' + str(quantity) + ' WHERE id = ' + str(id))