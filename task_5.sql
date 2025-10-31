import mysql.connector
alxdb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="and324292and",
    database="alx_book_store"
)
alxcursor = alxdb.cursor()
alxcursor.execute("INSERT INTO customers (customer_id, customer_name, email, address) VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '124 Happiness Ave.');")
alxdb.commit()
