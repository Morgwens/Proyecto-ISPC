import mysql.connector


def crearTabla(mySql_Create_Table_Query):
    try:
        connection=mysql.connector.connect(host='localhost',database='melina',user='root',password='rosso504')
	
        cursor = connection.cursor()
        result = cursor.execute(mySql_Create_Table_Query)
        print("tabla productos creada con exito,,!! ")

    except mysql.connector.Error as error:
        print("Falla en crerar tabla MySQL: {}".format(error))
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed")
            

crearTabla("""CREATE TABLE `fichaPrestador` (
  `id_UsuarioPrestador` int(11) primary key NOT NULL,
  `password` varchar(45) NOT NULL,
  `formacion` varchar (45) NOT NULL,
  `matricula` varchar(45) NOT NULL,
  `puntuacion` varchar(45) NOT NULL) """)

crearTabla("""CREATE TABLE `fichaCliente` (
  `id_UsuarioCliente` int(11) primary key NOT NULL,
  `password` varchar(45) NOT NULL,
  `puntuacion` varchar(45) NOT NULL) """)

crearTabla("""CREATE TABLE `prestador` (
  `id_prestador` int(11) primary key NOT NULL,
  `nombreApellido` varchar(45) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `genero` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` int(11) NOT NULL,
  `fecha_alta` datetime NOT NULL,
  `fichaPrestador_id` int(11) NOT NULL,
  foreign key(fichaPrestador_id) references fichaprestador(id_UsuarioPrestador)
) """)
  
crearTabla("""CREATE TABLE `cliente` (
  `id_cliente` int(11) primary key NOT NULL,
  `nombreApellido` varchar(45) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `genero` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` int(11) NOT NULL,
  `fecha_alta` datetime NOT NULL,
  `fichaCliente_id` int(11) NOT NULL,
  foreign key(fichaCliente_id) references fichacliente(id_UsuarioCliente)
) """)











