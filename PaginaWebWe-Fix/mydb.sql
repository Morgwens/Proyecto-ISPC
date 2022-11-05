-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2022 a las 22:26:51
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mydb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

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

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombreApellido`, `fechaNacimiento`, `genero`, `email`, `direccion`, `telefono`, `fecha_alta`, `fichaCliente_id_UsuarioCliente`) VALUES
(1, 'Soria Ruben', '1995-03-09', 'masculino', 'shshs@hshs.com', 'Consglio 612', 1232134, '2022-11-05 22:16:23', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichacliente`
--

CREATE TABLE `fichacliente` (
  `id_UsuarioCliente` int(11) NOT NULL,
  `password` varchar(45) NOT NULL,
  `puntuacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fichacliente`
--

INSERT INTO `fichacliente` (`id_UsuarioCliente`, `password`, `puntuacion`) VALUES
(1, '1234', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichaprestador`
--

CREATE TABLE `fichaprestador` (
  `id_fichaPrestador` int(11) NOT NULL,
  `password` varchar(45) NOT NULL,
  `formacion` varchar(150) NOT NULL,
  `matricula` varchar(150) NOT NULL,
  `puntuacion` int(11) NOT NULL,
  `opiniones` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fichaprestador`
--

INSERT INTO `fichaprestador` (`id_fichaPrestador`, `password`, `formacion`, `matricula`, `puntuacion`, `opiniones`) VALUES
(1, '1235544', 'tecnico superior en desarrollo de software', '1234-a-34', 5, 'es buen técnico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestador`
--

CREATE TABLE `prestador` (
  `id_prestador` int(11) NOT NULL,
  `nombreApellido` varchar(45) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `genero` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` int(11) NOT NULL,
  `fecha_alta` datetime NOT NULL,
  `fichaPrestador_id_fichaPrestador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `prestador`
--

INSERT INTO `prestador` (`id_prestador`, `nombreApellido`, `fechaNacimiento`, `genero`, `email`, `direccion`, `telefono`, `fecha_alta`, `fichaPrestador_id_fichaPrestador`) VALUES
(1, 'Carlos Alancay', '1980-12-18', 'masculino', 'carlosalan@hshs.com', 'Panama 3454', 1235432, '2022-11-05 22:17:59', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_servicio` int(11) NOT NULL,
  `nombreServicio` varchar(100) NOT NULL,
  `costoHora` float NOT NULL,
  `descueto` float NOT NULL,
  `ubicacion` varchar(45) NOT NULL,
  `fecha` date DEFAULT NULL,
  `Cliente_id_cliente` int(11) NOT NULL,
  `Prestador_id_prestador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_servicio`, `nombreServicio`, `costoHora`, `descueto`, `ubicacion`, `fecha`, `Cliente_id_cliente`, `Prestador_id_prestador`) VALUES
(1, 'Desarrollo software', 500, 5, 'zona norte', '2022-11-02', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `fichaCliente_id_UsuarioCliente` (`fichaCliente_id_UsuarioCliente`);

--
-- Indices de la tabla `fichacliente`
--
ALTER TABLE `fichacliente`
  ADD PRIMARY KEY (`id_UsuarioCliente`);

--
-- Indices de la tabla `fichaprestador`
--
ALTER TABLE `fichaprestador`
  ADD PRIMARY KEY (`id_fichaPrestador`);

--
-- Indices de la tabla `prestador`
--
ALTER TABLE `prestador`
  ADD PRIMARY KEY (`id_prestador`),
  ADD KEY `fichaPrestador_id_fichaPrestador` (`fichaPrestador_id_fichaPrestador`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_servicio`),
  ADD KEY `Cliente_id_cliente` (`Cliente_id_cliente`),
  ADD KEY `Prestador_id_prestador` (`Prestador_id_prestador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `fichacliente`
--
ALTER TABLE `fichacliente`
  MODIFY `id_UsuarioCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `fichaprestador`
--
ALTER TABLE `fichaprestador`
  MODIFY `id_fichaPrestador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `prestador`
--
ALTER TABLE `prestador`
  MODIFY `id_prestador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`fichaCliente_id_UsuarioCliente`) REFERENCES `fichacliente` (`id_UsuarioCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `prestador`
--
ALTER TABLE `prestador`
  ADD CONSTRAINT `prestador_ibfk_1` FOREIGN KEY (`fichaPrestador_id_fichaPrestador`) REFERENCES `fichaprestador` (`id_fichaPrestador`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD CONSTRAINT `servicio_ibfk_1` FOREIGN KEY (`Cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `servicio_ibfk_2` FOREIGN KEY (`Prestador_id_prestador`) REFERENCES `prestador` (`id_prestador`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
