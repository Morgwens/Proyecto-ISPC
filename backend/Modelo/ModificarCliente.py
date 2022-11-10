import mysql.connector

def iniciarSesionCliente(id_cliente, propiedad, nuevoDato):

    try:
        connection=mysql.connector.connect(host='localhost',database='melina',user='root',password='rosso504')
	

        mySql_insert_query = " UPDATE cliente SET  {}='{}' WHERE id_cliente='{}';".format(propiedad, nuevoDato,id_cliente)

    
        cursor = connection.cursor()
        cursor.execute(mySql_insert_query)
        connection.commit()
        print("Registro actualizado") 

    except mysql.connector.Error as error:
        print("Falla en la actualizacion del registro {}".format(error))

    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed")

iniciarSesionCliente("1", "genero", "femenino")
iniciarSesionCliente("2", "email", "hola@hola")
iniciarSesionCliente("3", "direccion", "general paz 1500")