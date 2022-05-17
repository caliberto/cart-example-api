import sqlite3

conn = sqlite3.connect('db/database.db')

with open('db/scripts/db-ecommerce.sql') as f:
    conn.executescript(f.read())
    
conn.close()