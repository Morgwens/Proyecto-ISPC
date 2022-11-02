CREATE SCHEMA `mydb`;

CREATE TABLE `mydb`.`fichaCliente` (
  `id_UsuarioCliente` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `password` VARCHAR(45) NOT NULL,
  `puntuacion` INT NOT NULL
);

CREATE TABLE `mydb`.`Cliente` (
  `id_cliente` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nombreApellido` VARCHAR(45) NOT NULL,
  `fechaNacimiento` DATETIME NOT NULL,
  `genero` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `telefono` INT NOT NULL,
  `fecha_alta` DATETIME NOT NULL,
  `fichaCliente_id_UsuarioCliente` INT NOT NULL
);

CREATE TABLE `mydb`.`fichaPrestador` (
  `id_fichaPrestador` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `password` VARCHAR(45) NOT NULL,
  `formacion` VARCHAR(150) NOT NULL,
  `matricula` VARCHAR(150) NOT NULL,
  `puntuacion` INT NOT NULL,
  `opiniones` VARCHAR(255) NOT NULL
);

CREATE TABLE `mydb`.`Prestador` (
  `id_prestador` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nombreApellido` VARCHAR(45) NOT NULL,
  `fechaNacimiento` DATETIME NOT NULL,
  `genero` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `telefono` INT NOT NULL,
  `fecha_alta` DATETIME NOT NULL,
  `fichaPrestador_id_fichaPrestador` INT NOT NULL
);

CREATE TABLE `mydb`.`Servicio` (
  `id_servicio` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nombreServicio` VARCHAR(100) NOT NULL,
  `costoHora` FLOAT NOT NULL,
  `descueto` FLOAT NOT NULL,
  `ubicacion` VARCHAR(45) NOT NULL,
  `fecha` DATETIME,
  `Cliente_id_cliente` INT NOT NULL,
  `Prestador_id_prestador` INT NOT NULL
);

ALTER TABLE `mydb`.`Cliente` ADD CONSTRAINT `fk_Cliente_fichaCliente` FOREIGN KEY (`fichaCliente_id_UsuarioCliente`) REFERENCES `mydb`.`fichaCliente` (`id_UsuarioCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `mydb`.`Prestador` ADD CONSTRAINT `fk_Prestador_fichaPrestador1` FOREIGN KEY (`fichaPrestador_id_fichaPrestador`) REFERENCES `mydb`.`fichaPrestador` (`id_fichaPrestador`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `mydb`.`Servicio` ADD CONSTRAINT `fk_Servicio_Cliente1` FOREIGN KEY (`Cliente_id_cliente`) REFERENCES `mydb`.`Cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `mydb`.`Servicio` ADD CONSTRAINT `fk_Servicio_Prestador1` FOREIGN KEY (`Prestador_id_prestador`) REFERENCES `mydb`.`Prestador` (`id_prestador`) ON DELETE NO ACTION ON UPDATE NO ACTION;
