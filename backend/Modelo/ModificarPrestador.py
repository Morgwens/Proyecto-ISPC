import mysql.connector

def iniciarSesionCliente(id_prestador, propiedad, nuevoDato):

    try:
        connection=mysql.connector.connect(host='localhost',database='melina',user='root',password='rosso504')
	

        mySql_insert_query = " UPDATE prestador SET  {}='{}' WHERE id_prestador='{}';".format(propiedad, nuevoDato,id_prestador)

    
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

iniciarSesionCliente("2", "genero", "femenino")
iniciarSesionCliente("1", "email", "chau@chau")
iniciarSesionCliente("3", "direccion", "colon 1500")