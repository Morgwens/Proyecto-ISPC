import mysql.connector

def clientes():
    try:
        connection=mysql.connector.connect(host='localhost',database='melina',user='root',password='rosso504')
	
        mySql_query = "SELECT * FROM cliente JOIN fichacliente ON cliente.id_cliente = fichacliente.id_UsuarioCliente"
  
        cursor = connection.cursor()
        cursor.execute(mySql_query)
   
        rows=cursor.fetchall()
        for row in rows:
            print(row)

    except mysql.connector.Error as error:
        print("Falla en la busqueda de todos los clientes {}".format(error))

    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed")


clientes()