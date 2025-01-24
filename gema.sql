-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-01-2025 a las 21:58:57
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
-- Base de datos: `gema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activos`
--

CREATE TABLE `activos` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `activos`
--

INSERT INTO `activos` (`id`, `email`, `nombre`, `apellido`) VALUES
(2, 'vale@gmail.com', 'Valentina', 'Tique'),
(3, 'vale@gmail.com', 'Valentina', 'Tique'),
(4, 'vale@gmail.com', 'Valentina', 'Tique'),
(5, 'vale@gmail.com', 'Valentina', 'Tique');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espera`
--

CREATE TABLE `espera` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `espera`
--

INSERT INTO `espera` (`id`, `email`, `nombre`, `apellido`) VALUES
(1, 'carolina@gmail.com', 'Ginna', 'Tique'),
(2, 'carolina@gmail.com', 'Ginna', 'Tique'),
(3, 'carolina@gmail.com', 'Ginna', 'Tique'),
(4, 'carolina@gmail.com', 'Ginna', 'Tique');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inactivos`
--

CREATE TABLE `inactivos` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inactivos`
--

INSERT INTO `inactivos` (`id`, `email`, `nombre`, `apellido`) VALUES
(1, 'ginna@gmail.com', 'Ginna', 'Tique'),
(2, 'ginna@gmail.com', 'Ginna', 'Tique'),
(3, 'ginna@gmail.com', 'Ginna', 'Tique'),
(4, 'ginna@gmail.com', 'Ginna', 'Tique');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activos`
--
ALTER TABLE `activos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `espera`
--
ALTER TABLE `espera`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inactivos`
--
ALTER TABLE `inactivos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activos`
--
ALTER TABLE `activos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `espera`
--
ALTER TABLE `espera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `inactivos`
--
ALTER TABLE `inactivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
