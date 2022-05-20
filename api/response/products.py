def build_products_response(products_rows, product_details_rows : list):
    try:
        products = []
        for products_row in products_rows:
            product_details = []
            for product_details_row in product_details_rows:
                if product_details_row["product_id"] == products_row["id"]:
                    product_detail = {}
                    product_detail["ID"] = product_details_row["id"]
                    product_detail["size"] = product_details_row["size"]
                    product_detail["quantity"] = product_details_row["quantity"]
                    product_details.append(product_detail)
            
            product = {}
            product["ID"] = products_row["id"]
            product["name"] = products_row["name"]
            product["sku"] = products_row["sku"]
            product["image"] = products_row["image"]
            product["price"] = products_row["price"]
            product["salePrice"] = products_row["sale_price"]
            product["details"] = product_details
            products.append(product)
        return products
    except:
        return []