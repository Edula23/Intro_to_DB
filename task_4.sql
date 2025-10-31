import mysql.connector
alxdb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="and324292and",
    database="alx_book_store"
)
alxcursor = alxdb.cursor()
alxcursor.execute("SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'alx_book_store' AND TABLE_NAME = 'Books';")
