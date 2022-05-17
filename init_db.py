import sqlite3

connection = sqlite3.connect('db/database.db')

with open('db/scripts/db-ecommerce.sql') as f:
    connection.executescript(f.read())

cur = connection.cursor()

connection.commit()
connection.close()