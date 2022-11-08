import mysql.connector

def prestadores():
    try:
        connection=mysql.connector.connect(host='localhost',database='melina',user='root',password='rosso504')
	
        mySql_query = "SELECT * FROM prestador JOIN fichaprestador ON prestador.id_prestador = fichaprestador.id_UsuarioPrestador"
  
        cursor = connection.cursor()
        cursor.execute(mySql_query)
   
        rows=cursor.fetchall()
        for row in rows:
            print(row)

    except mysql.connector.Error as error:
        print("Falla en la busqueda de todos los prestadores {}".format(error))

    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed")


prestadores()