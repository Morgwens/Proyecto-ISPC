import mysql.connector
from mysql.connector import Error

def registrarCliente(id_cliente, nombreApellido, fechaNacimiento, genero, email, direccion, telefono, fecha_alta, fichaCliente_id, password, puntuacion):
    try:
        connection=mysql.connector.connect(host='localhost',database='melina',user='root',password='rosso504')
	
        insertar_cliente_query = """
        INSERT INTO cliente (id_cliente, nombreApellido, fechaNacimiento, genero, email, direccion, telefono, fecha_alta, fichaCliente_id)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s) 
        """
        datos_del_cliente = (id_cliente, nombreApellido, fechaNacimiento, genero, email, direccion, telefono, fecha_alta, fichaCliente_id)
       
        insertar_ficha_cliente = """
        INSERT INTO fichacliente (id_UsuarioCliente, password, puntuacion)
        VALUES (%s, %s, %s) 
        """
        datos_ficha_cliente = (fichaCliente_id, password, puntuacion)
       

        cursor = connection.cursor()
       
        cursor.execute(insertar_ficha_cliente, datos_ficha_cliente)

        cursor.execute(insertar_cliente_query, datos_del_cliente)

        connection.commit()
        print('Cliente registrado correctamente')

    except Error as err:
        print('Hubo un error al registrar el cliente. ', err)
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            
registrarCliente(1, 'Soria Ruben', '1995-03-09', 'masculino', 'shshs@hshs.com', 'Consglio 612', 1232134, '2022-11-05 22:16:23', 1, "lalala", "8")
        
registrarCliente(2, 'Manuel', '1995-03-09', 'masculino', 'hola@hshs.com', 'Consglio 612', 1232134, '2022-11-05 22:16:23', 2, "lalala", "8")

registrarCliente(3, 'Esteban', '1995-03-09', 'masculino', 'chau@hshs.com', 'Consglio 612', 1232134, '2022-11-05 22:16:23', 3, "lalala", "8")
              