-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 02-06-2023 a las 13:28:58
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tarjetero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cardex`
--

CREATE TABLE `cardex` (
  `Id` int(11) NOT NULL,
  `NUM_HISTORIA_CLINICA` varchar(50) DEFAULT NULL,
  `APELLIDO_PATERNO` varchar(50) DEFAULT NULL,
  `APELLIDO_MATERNO` varchar(50) DEFAULT NULL,
  `NOMBRES` varchar(50) DEFAULT NULL,
  `NOMBRE_PADRE` varchar(50) DEFAULT NULL,
  `NOMBRE_MADRE` varchar(50) DEFAULT NULL,
  `FECHA_NACIMIENTO` varchar(50) DEFAULT NULL,
  `NUM_CEDULA` varchar(50) DEFAULT NULL,
  `COD_USUARIO` varchar(50) DEFAULT NULL,
  `FECHA_REGISTRO` varchar(50) DEFAULT NULL,
  `SEXO` varchar(50) DEFAULT NULL,
  `LOCALIDAD` varchar(50) DEFAULT NULL,
  `ESTADO` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `Estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `Estado`) VALUES
(1, 'A'),
(2, 'P');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `Id` int(11) NOT NULL,
  `Sexo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sexo`
--

INSERT INTO `sexo` (`Id`, `Sexo`) VALUES
(1, 'F'),
(2, 'M');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetero_indice_uggroups`
--

CREATE TABLE `tarjetero_indice_uggroups` (
  `GroupID` int(11) NOT NULL,
  `Label` varchar(300) DEFAULT NULL,
  `Provider` varchar(10) NOT NULL DEFAULT '',
  `Comment` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetero_indice_ugmembers`
--

CREATE TABLE `tarjetero_indice_ugmembers` (
  `UserName` varchar(255) NOT NULL,
  `GroupID` int(11) NOT NULL,
  `Provider` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tarjetero_indice_ugmembers`
--

INSERT INTO `tarjetero_indice_ugmembers` (`UserName`, `GroupID`, `Provider`) VALUES
('0602907032', -1, ''),
('0604376921', -1, ''),
('1600448631', -1, ''),
('admin', -1, ''),
('admin20', -1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetero_indice_ugrights`
--

CREATE TABLE `tarjetero_indice_ugrights` (
  `TableName` varchar(300) NOT NULL,
  `GroupID` int(11) NOT NULL,
  `AccessMask` varchar(10) DEFAULT NULL,
  `Page` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tarjetero_indice_ugrights`
--

INSERT INTO `tarjetero_indice_ugrights` (`TableName`, `GroupID`, `AccessMask`, `Page`) VALUES
('cardex', -2, 'AESPI', ''),
('cardex', -1, 'ADESPIM', NULL),
('estado', -1, 'ADESPIM', NULL),
('sexo', -1, 'ADESPIM', NULL),
('usuarios', -1, 'ADESPIM', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `CI` varchar(50) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Contraseña` varchar(50) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Celular` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `CI`, `Nombre`, `Contraseña`, `Correo`, `Celular`) VALUES
(1, '1600448631', 'Marco Guato Rojas', '1600448631', 'marco.guato.rojas@gmail.com', '0995325076'),
(4, '0602907032', 'José Luis Piray Quezada', '0602907032', 'jose.piray@mspz3.gob.ec', '0995342673'),
(6, 'admin', 'admin', 'admin', 'admin', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cardex`
--
ALTER TABLE `cardex`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tarjetero_indice_uggroups`
--
ALTER TABLE `tarjetero_indice_uggroups`
  ADD PRIMARY KEY (`GroupID`,`Provider`);

--
-- Indices de la tabla `tarjetero_indice_ugmembers`
--
ALTER TABLE `tarjetero_indice_ugmembers`
  ADD PRIMARY KEY (`UserName`,`GroupID`,`Provider`);

--
-- Indices de la tabla `tarjetero_indice_ugrights`
--
ALTER TABLE `tarjetero_indice_ugrights`
  ADD PRIMARY KEY (`TableName`(50),`GroupID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cardex`
--
ALTER TABLE `cardex`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sexo`
--
ALTER TABLE `sexo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tarjetero_indice_uggroups`
--
ALTER TABLE `tarjetero_indice_uggroups`
  MODIFY `GroupID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
