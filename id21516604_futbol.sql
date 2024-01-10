-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 10-01-2024 a las 14:23:30
-- Versión del servidor: 10.5.20-MariaDB
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id21516604_futbol`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `mail` varchar(30) DEFAULT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`mail`, `pass`) VALUES
('pepe', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `fecha` date NOT NULL,
  `email` varchar(40) NOT NULL,
  `mensaje` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`fecha`, `email`, `mensaje`) VALUES
('2023-11-05', 'MARIANO@MAIL.COM', 'JKJKL JKLJKLÑJ JKLJKLÑ'),
('2023-11-07', 'MARY@MAIL.COM', 'ESTA ES LA PRUEBA\r\nDEL HOST');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(4) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `nombre`, `email`) VALUES
(10, 'ROJO', 'bochini@mail.com'),
(20, 'HURACAN', 'globo@mail.com'),
(109, 'LIVERPOOL', 'anfield@mail.com'),
(110, 'JUVENTUS', 'juventus@mail.com'),
(162, 'CHICAGO', 'prueba_1@mail.com'),
(175, 'lomas del mirador', 'mirador@mail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `nombre` varchar(30) NOT NULL,
  `fk` int(4) UNSIGNED NOT NULL,
  `dni` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`nombre`, `fk`, `dni`) VALUES
('LIDDELL', 109, ' 103'),
('GERRARD', 109, '100 '),
('RUSH', 109, '101 '),
('CARRAGHER', 109, '104 '),
('MOHAMED SALAH', 109, '105 '),
('DEL PIERO', 110, '1101'),
('BAGGIO', 110, '1102'),
('GIANLUIGI BUFFON', 110, '1103'),
('chilavert', 162, '1441'),
('TORO_1', 162, '1620'),
('TORO_2', 162, '1621'),
('TORO 3', 162, '1622'),
('FELIX LUIS CHILAVERT', 162, '202'),
('V4', 162, '204'),
('V5', 162, '205'),
('GLOBO_1', 20, '300'),
('GLOBO_2', 20, '301'),
('GLOBO_3', 20, '302'),
('L2', 20, '45'),
('PERICO PEREZ', 10, '666'),
('TIBURON SERRIZUELA', 10, '667'),
('FARID MONDRAGON', 10, '668'),
('MORRON ROTCHEN', 10, '669'),
('POLACO ARZENO', 10, '670'),
('GloboPrueba host', 20, '9797'),
('L4', 20, 'DNICUAR'),
('L5', 20, 'DNIQUIN'),
('L3', 20, 'DNITER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `clave` varchar(40) NOT NULL,
  `mail` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`clave`, `mail`) VALUES
('202cb962ac59075b964b07152d234b70', 'PRUEBA@MAIL.COM'),
('202cb962ac59075b964b07152d234b70', 'PRUEBA@MAIL.COM'),
('caf1a3dfb505ffed0d024130f58c5cfa', 'prueba_1@mail.com'),
('0a113ef6b61820daa5611c870ed8d5ee', 'flandria@mail.com'),
('0a113ef6b61820daa5611c870ed8d5ee', 'flandria@mail.com'),
('08f0efebb1c51aada9430a089a2050cc', 'MARIANO@MAIL.COM'),
('67ff32d40fb51f1a2fd2c4f1b1019785', 'PRUEBA88@MAIL.COM'),
('b8c37e33defde51cf91e1e03e51657da', 'PRUEBA_HOST@MAIL.COM'),
('4afe044911ed2c247005912512ace23b', 'PRUEBA_webhost@MAIL.COM');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`pass`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`dni`),
  ADD KEY `jugadores_ibfk_1` (`fk`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `jugadores_ibfk_1` FOREIGN KEY (`fk`) REFERENCES `equipos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
