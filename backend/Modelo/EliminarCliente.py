import mysql.connector

def iniciarSesionCliente(id_cliente):

    try:
        connection=mysql.connector.connect(host='localhost',database='melina',user='root',password='rosso504')
	

        mySql_insert_query = " DELETE FROM cliente  WHERE id_cliente='{}';".format(id_cliente)

    
        cursor = connection.cursor()
        cursor.execute(mySql_insert_query)
        connection.commit()
        print("Registro eliminado") 

    except mysql.connector.Error as error:
        print("Falla en la actualizacion del registro {}".format(error))

    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed")

iniciarSesionCliente("1")
