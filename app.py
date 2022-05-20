import json
from pickle import TRUE
from flask import Flask, request
from flask_cors import CORS, cross_origin
from api.route.products import get_products, put_products
from db.utility import init_db

app = Flask(__name__)
cors = CORS(app)

init_db()

@app.route('/products', methods = ['GET', 'PUT'])
@cross_origin()
def products():
    if request.method == 'GET':
        return get_products()
    elif request.method == 'PUT':
        return put_products(request.get_json())