import mysql.connector
alxdb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="and324292and",
    database="alx_book_store"
)
alxcursor = alxdb.cursor()
alxcursor.execute("USE alx_book_store;")
alxcursor.execute("SHOW TABLES;")
tables = alxcursor.fetchall()
for table in tables:
    print(table)