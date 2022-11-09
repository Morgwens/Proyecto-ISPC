import mysql.connector
from mysql.connector import Error

def registrarPrestador(id_prestador, nombreApellido, fechaNacimiento, genero, email, direccion, telefono, fecha_alta, id_UsuarioPrestador, password, formacion, matricula, puntuacion):
    try:
        connection=mysql.connector.connect(host='localhost',database='melina',user='root',password='rosso504')
	
        insertar_prestador = """
        INSERT INTO prestador (id_prestador, nombreApellido, fechaNacimiento, genero, email, direccion, telefono, fecha_alta, fichaPrestador_id)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s) 
        """
        datos_del_prestador = (id_prestador, nombreApellido, fechaNacimiento, genero, email, direccion, telefono, fecha_alta, id_UsuarioPrestador)
       
        insertar_ficha_prestador = """
        INSERT INTO fichaprestador (id_UsuarioPrestador, password, formacion, matricula, puntuacion)
        VALUES (%s, %s, %s, %s, %s) 
        """
        datos_ficha_prestador = (id_UsuarioPrestador, password, formacion, matricula, puntuacion)
       
        cursor = connection.cursor()


        cursor.execute(insertar_ficha_prestador, datos_ficha_prestador)

        cursor.execute(insertar_prestador, datos_del_prestador)

        connection.commit()
        print('Proveedor registrado correctamente')

    except Error as err:
        print('Hubo un error al registrar al proveedor. ', err)
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            
registrarPrestador(1, 'Claudio,', '1995-03-09', 'masculino', 'shshs@hshs.com', 'Consglio 612', 1232134, '2022-11-05 22:16:23', 1, "lalala", "gasista", "pot102", "8")
    
registrarPrestador(2, 'Juan,', '1987-03-09', 'masculino', 'hola@hshs.com', 'Consglio 612', 1232134, '2022-11-05 22:16:23', 2, "lalala", "electricista", "pot102", "8")
 
registrarPrestador(3, 'Luis,', '1921-03-09', 'masculino', 'chau@hshs.com', 'Consglio 612', 1232134, '2022-11-05 22:16:23', 3, "lalala", "plomero", "pot102", "8")
 