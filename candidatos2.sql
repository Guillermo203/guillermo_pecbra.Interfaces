-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-02-2025 a las 09:24:37
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `candidatos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `idcandidato` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `trabaja` varchar(10) NOT NULL,
  `fechainscripcion` datetime(6) NOT NULL,
  `IdOferta` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`idcandidato`, `nombre`, `ciudad`, `trabaja`, `fechainscripcion`, `IdOferta`) VALUES
(1, 'Guillermo de Pecho', 'Aranda de duero', '0', '2025-01-01 11:38:47.000000', 1),
(2, 'Marcos Jose', 'Burgos', 'True', '2024-11-07 11:40:00.000000', 2),
(3, 'asdfgh', 'qwertyu', '1', '2025-01-20 00:00:00.000000', 2),
(5, 'adsfdasf', 'dsafasfsaf', '1', '2024-07-13 00:00:00.000000', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertaempleo`
--

CREATE TABLE `ofertaempleo` (
  `IdOferta` int(10) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ofertaempleo`
--

INSERT INTO `ofertaempleo` (`IdOferta`, `nombre`, `descripcion`) VALUES
(1, 'Carnicerias', 'Carniceria, a las afueras de la ciudad'),
(2, 'InformaticoBD', 'Trabajo a distancia, Progrmador de Bases de Datos');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`idcandidato`),
  ADD KEY `fk_candidatos_idoferta` (`IdOferta`);

--
-- Indices de la tabla `ofertaempleo`
--
ALTER TABLE `ofertaempleo`
  ADD PRIMARY KEY (`IdOferta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `idcandidato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ofertaempleo`
--
ALTER TABLE `ofertaempleo`
  MODIFY `IdOferta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD CONSTRAINT `fk_candidatos_idoferta` FOREIGN KEY (`IdOferta`) REFERENCES `ofertaempleo` (`IdOferta`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
