import mysql.connector
from mysql.connector import Error
alxdb = mysql.connector.connect(
    host = 'localhost',
    user = 'root',
    password = 'and324292and',
    database = 'alx_book_store'
)
mycursor = alxdb.cursor()
mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
mycursor.execute("USE alx_book_store")
def database_exists(host, user, password, db_name):
    try:
        conn = mysql.connector.connect(host=host, user=user, password=password)
        cursor = conn.cursor()
        cursor.execute("SHOW DATABASES")
        databases = [row[0] for row in cursor.fetchall()]
        cursor.close()
        conn.close()
        return db_name in databases
    except Error as e:
        print("except mysql.connector.Error", e   )
        return False
if __name__ == "__main__":
    exists = database_exists("localhost", "root", "and324292and", "alx_book_store")
    if exists:
        print("'alx_book_store' created successfully!")
    else:
        print("Error connecting to mySQL")