import sqlite3

def init_db():
    conn = sqlite3.connect('tmp/database.db')
    with open('db/schema.sql') as f:
        conn.executescript(f.read())  
    conn.close()

def get_db_connection():
    conn = sqlite3.connect('tmp/database.db')
    conn.row_factory = sqlite3.Row
    return conn