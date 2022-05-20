from flask import jsonify
from api.response.products import build_products_response
from db.queries import fetch_product_details, fetch_products, update_product_detail

from db.utility import get_db_connection

def get_products():
    try:
        conn = get_db_connection()
        cur = conn.cursor()

        products_rows = fetch_products(cur)
        product_details_rows = fetch_product_details(cur)

        products = build_products_response(products_rows, product_details_rows)
    except:
        products = []
    finally:
        conn.close()

    return jsonify(products)

def put_products(request_data: any):
    try:
        conn = get_db_connection()
        cur = conn.cursor()

        for product in request_data:            
            update_product_detail(cur, product["productDetailID"], product["quantity"])
        
        conn.commit()
    except:
        conn.rollback()
    finally:
        conn.close()

    return get_products()