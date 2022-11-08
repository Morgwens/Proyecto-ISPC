import mysql.connector
from mysql.connector import Error

def registrarCliente(id_cliente, nombreApellido, fechaNacimiento, genero, email, direccion, telefono, fecha_alta, fichaCliente_id_UsuarioCliente):
    try:
        connection = mysql.connector.connect(
            host = 'localhost',
            database = 'mydb',
            user = 'root',
            password = ''
        )
        insertar_cliente_query = """
        INSERT INTO cliente (id_cliente, nombreApellido, fechaNacimiento, genero, email, direccion, telefono, fecha_alta, fichaCliente_id_UsuarioCliente)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s) 
        """
        datos_del_cliente = (id_cliente, nombreApellido, fechaNacimiento, genero, email, direccion, telefono, fecha_alta, fichaCliente_id_UsuarioCliente)
        cursor = connection.cursor()
        cursor.execute(insertar_cliente_query, datos_del_cliente)
        connection.commit()
        print('Cliente registrado correctamente')

    except Error as err:
        print('Hubo un error al registrar el cliente. ', err)
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            
registrarCliente(1, 'Soria Ruben', '1995-03-09', 'masculino', 'shshs@hshs.com', 'Consglio 612', 1232134, '2022-11-05 22:16:23', 1)
        