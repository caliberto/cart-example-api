from flask import Flask, jsonify
from flask_cors import CORS, cross_origin
import sqlite3

app = Flask(__name__)
cors = CORS(app)

def get_db_connection():
    conn = sqlite3.connect('db/database.db')
    conn.row_factory = sqlite3.Row
    return conn

@app.route('/products')
@cross_origin()
def index():
    products = []

    try:
        conn = get_db_connection()
        cur = conn.cursor()

        cur.execute('SELECT p.id, p.name, p.sku FROM products p')
        products_rows = cur.fetchall()

        cur.execute('SELECT pd.id, pd.product_id, pd.size, pd.quantity, pd.price, pd.sale_price FROM product_details pd')
        product_details_rows = cur.fetchall()

        conn.close()

        for products_row in products_rows:
                product_details = []
                for product_details_row in product_details_rows:
                    if product_details_row["product_id"] == products_row["id"]:
                        product_detail = {}
                        product_detail["id"] = product_details_row["id"]
                        product_detail["size"] = product_details_row["size"]
                        product_detail["quantity"] = product_details_row["quantity"]
                        product_detail["price"] = product_details_row["price"]
                        product_detail["sale_price"] = product_details_row["sale_price"]
                        product_details.append(product_detail)
                
                product = {}
                product["id"] = products_row["id"]
                product["name"] = products_row["name"]
                product["sku"] = products_row["sku"]
                product["details"] = product_details
                products.append(product)
    except:
        products = []

    return jsonify(products)