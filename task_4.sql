import mysql.connector
alxdb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="and324292and",
    database="alx_book_store"
)
alxcursor = alxdb.cursor()
alxcursor.execute("SELECT * FROM books")
books = alxcursor.fetchall()
for book in books:
    print(book)