DROP TABLE IF EXISTS fichaCliente;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Servicio;
DROP TABLE IF EXISTS Prestador ;
DROP TABLE IF EXISTS fichaPrestador;


CREATE TABLE fichaCliente (
id_UsuarioCliente INT PRIMARY KEY NOT NULL,
password  VARCHAR(50) NOT NULL,
puntuación INT(5) NOT NULL);

CREATE TABLE Cliente (
id_Cliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombreApellido VARCHAR(255) NOT NULL,
fechaNacimiento DATETIME(8) NOT NULL,
genero VARCHAR(25) NOT NULL,
email VARCHAR(255) NOT NULL,
direccion VARCHAR(255) NOT NULL,
teléfono VARCHAR(50) NOT NULL,
fecha_alta DATETIME(20) NOT NULL,
id_UsuarioCliente1 INT NOT NULL);

CREATE TABLE Servicio (
id_servicio INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombreServicio VARCHAR(255) NOT NULL,
costoHora INT(50) NOT NULL,
descuento INT(10) NOT NULL,
ubicacion VARCHAR(255) NOT NULL,
fecha DATETIME(8) NOT NULL,
id_cliente1 INT NOT NULL,
id_prestador1 INT NOT NULL);

CREATE TABLE Prestador  (
id_prestador INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombreApellido VARCHAR(255) NOT NULL,
fechaNacimiento DATE(10) NOT NULL,
genero VARCHAR(25) NOT NULL,
email VARCHAR(255) NOT NULL,
localidad VARCHAR(255) NOT NULL,
telefono VARCHAR(50) NOT NULL,
fecha_alta DATETIME(20) NOT NULL,
id_UsuarioPrestador INT NOT NULL);

CREATE TABLE fichaPrestador (
id_UsuarioPrestador INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
password VARCHAR(255) NOT NULL,
formacion VARCHAR(255) NOT NULL,
matricula VARCHAR(255) NOT NULL,
puntuacion INT(5) NOT NULL,
opciones VARCHAR(255) NOT NULL,
id_prestador INT NOT NULL);

ALTER TABLE Cliente ADD CONSTRAINT Cliente_id_UsuarioCliente1_fichaCliente_id_UsuarioCliente FOREIGN KEY (id_UsuarioCliente1) REFERENCES fichaCliente(id_UsuarioCliente);
ALTER TABLE Servicio ADD CONSTRAINT Servicio_id_cliente1_Cliente_id_Cliente FOREIGN KEY (id_cliente1) REFERENCES Cliente(id_Cliente);
ALTER TABLE Servicio ADD CONSTRAINT Servicio_id_prestador1_fichaCliente_id_UsuarioCliente FOREIGN KEY (id_prestador1) REFERENCES fichaCliente(id_UsuarioCliente);
ALTER TABLE Prestador  ADD CONSTRAINT Prestador _id_UsuarioPrestador_Servicio_id_servicio FOREIGN KEY (id_UsuarioPrestador) REFERENCES Servicio(id_servicio);
ALTER TABLE fichaPrestador ADD CONSTRAINT fichaPrestador_id_prestador_Prestador _id_prestador FOREIGN KEY (id_prestador) REFERENCES Prestador (id_prestador);
