import mysql.connector

def iniciarSesionCliente(email, password):
    try:
        connection=mysql.connector.connect(host='localhost',database='melina',user='root',password='rosso504')
	
        mySql_query = """SELECT * FROM cliente JOIN fichacliente ON cliente.id_cliente = fichacliente.id_UsuarioCliente WHERE cliente.email = '{}' AND fichacliente.password = '{}' """.format(email,password) 
  
        cursor = connection.cursor()
        
        cursor.execute(mySql_query)
   
        rows=cursor.fetchall()
        if len(rows) == 0:
            print("Mail o password incorrecto")
        else:
            for row in rows:
                print(row)

    except mysql.connector.Error as error:
        print("Mail o password incorrecto{}".format(error))

    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed")


iniciarSesionCliente("shshs@hshs.com", "lalala")
iniciarSesionCliente("hola@hshs.com", "lalala")
iniciarSesionCliente("shshs@hshs.com", "pururu")