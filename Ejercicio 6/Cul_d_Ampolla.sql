-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 31-08-2020 a las 21:13:11
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Cul d'Ampolla`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Clientes`
--

CREATE TABLE `Clientes` (
  `Id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `código postal` varchar(30) NOT NULL,
  `teléfono` varchar(20) NOT NULL,
  `fecha` date NOT NULL,
  `cliente recomendado` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Clientes`
--

INSERT INTO `Clientes` (`Id`, `nombre`, `código postal`, `teléfono`, `fecha`, `cliente recomendado`) VALUES
(1, 'Rúben', '08041', '659966358', '2020-08-02', 'Natura S.L');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empleado`
--

CREATE TABLE `Empleado` (
  `Id empleado` int(11) NOT NULL,
  `Id gafas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Empleado`
--

INSERT INTO `Empleado` (`Id empleado`, `Id gafas`) VALUES
(100, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Gafas`
--

CREATE TABLE `Gafas` (
  `Id gafas` int(11) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `graduación izquierdo` decimal(7,2) NOT NULL,
  `graduación derecho` decimal(7,2) NOT NULL,
  `montura` varchar(30) NOT NULL,
  `color montura` varchar(30) NOT NULL,
  `color vidrio` varchar(30) NOT NULL,
  `precio` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Gafas`
--

INSERT INTO `Gafas` (`Id gafas`, `marca`, `graduación izquierdo`, `graduación derecho`, `montura`, `color montura`, `color vidrio`, `precio`) VALUES
(1, 'Etnia barcelona', '1.75', '2.00', 'pasta', 'marrón', 'verde', '280.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Proveedor`
--

CREATE TABLE `Proveedor` (
  `Id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `dirección` varchar(30) NOT NULL,
  `numero` int(11) NOT NULL,
  `piso` int(11) NOT NULL,
  `puerta` int(11) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `codigo postal` varchar(30) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `teléfono` varchar(30) NOT NULL,
  `fax` varchar(30) NOT NULL,
  `nif` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Proveedor`
--

INSERT INTO `Proveedor` (`Id`, `nombre`, `dirección`, `numero`, `piso`, `puerta`, `ciudad`, `codigo postal`, `pais`, `teléfono`, `fax`, `nif`) VALUES
(1, 'Etnia barcelona', 'Enric Morera', 42, 2, 1, 'Esplugues de Llobregat', '08950 ', 'España', '934735085', '933714512', '3456789M');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Clientes`
--
ALTER TABLE `Clientes`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `Empleado`
--
ALTER TABLE `Empleado`
  ADD PRIMARY KEY (`Id empleado`);

--
-- Indices de la tabla `Gafas`
--
ALTER TABLE `Gafas`
  ADD PRIMARY KEY (`Id gafas`);

--
-- Indices de la tabla `Proveedor`
--
ALTER TABLE `Proveedor`
  ADD PRIMARY KEY (`Id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Gafas`
--
ALTER TABLE `Gafas`
  ADD CONSTRAINT `Gafas_ibfk_1` FOREIGN KEY (`Id gafas`) REFERENCES `Clientes` (`Id`);

--
-- Filtros para la tabla `Proveedor`
--
ALTER TABLE `Proveedor`
  ADD CONSTRAINT `Proveedor_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `Clientes` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
