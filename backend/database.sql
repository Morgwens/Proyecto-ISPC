/*CREAR LA BASE DE DATOS mydb*/
CREATE DATABASE mydb;

/*USAR LA BASE DE DATOS mydb*/
USE mydb;

/*CREAR TABLA CLIENTES*/
CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombreApellido` varchar(45) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `genero` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` int(11) NOT NULL,
  `fecha_alta` datetime NOT NULL,
  `fichaCliente_id_UsuarioCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

