import mysql.connector

def iniciarSesionCliente(id_prestador):

    try:
        connection=mysql.connector.connect(host='localhost',database='melina',user='root',password='rosso504')
	

        mySql_insert_query = " DELETE FROM prestador WHERE id_prestador='{}';".format(id_prestador)

    
        cursor = connection.cursor()
        cursor.execute(mySql_insert_query)
        connection.commit()
        print("Registro elimindo") 

    except mysql.connector.Error as error:
        print("Falla en la actualizacion del registro {}".format(error))

    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed")

iniciarSesionCliente("2")
