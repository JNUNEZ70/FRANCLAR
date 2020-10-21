-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-10-2020 a las 21:36:31
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_franclar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bitacora_evento`
--

CREATE TABLE `tbl_bitacora_evento` (
  `id_bitacora_evento` int(11) NOT NULL,
  `fecha_evento` date NOT NULL DEFAULT current_timestamp(),
  `id_usuario` bigint(3) NOT NULL,
  `id_objeto` bigint(3) NOT NULL,
  `Accion` varchar(30) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_bitacora_evento`
--

INSERT INTO `tbl_bitacora_evento` (`id_bitacora_evento`, `fecha_evento`, `id_usuario`, `id_objeto`, `Accion`, `Descripcion`) VALUES
(1, '2020-10-21', 1, 3, 'Update', 'SE ACTUALIZÓ UN PARAMETRO'),
(2, '2020-10-21', 1, 3, 'Update', 'SE ACTUALIZÓ UN PARÁMETRO'),
(4, '2020-10-21', 1, 10, 'Insert', 'SE INGRESÓ UN NUEVO CARGO'),
(5, '2020-10-21', 1, 10, 'Insert', 'SE INGRESÓ UN NUEVO CARGO'),
(6, '2020-10-21', 1, 10, 'Delete', 'SE ELIMINÓ UN CARGO'),
(7, '2020-10-21', 1, 9, 'Insert', 'SE INGRESÓ UNA NUEVA ESPECIALIDAD'),
(8, '2020-10-21', 1, 9, 'Update', 'SE ACTUALIZÓ UNA ESPECIALIDAD'),
(9, '2020-10-21', 1, 9, 'Delete', 'SE ELIMINÓ UNA ESPECIALIDAD'),
(10, '2020-10-21', 1, 1, 'Insert', 'SE INGRESÓ UN NUEVO EMPLEADO'),
(11, '2020-10-21', 1, 1, 'Update', 'SE ACTUALIZÓ UN EMPLEADO'),
(12, '2020-10-21', 1, 1, 'Delete', 'SE ELIMINÓ UN EMPLEADO'),
(13, '2020-10-21', 1, 1, 'Insert', 'SE INGRESÓ UN NUEVO EMPLEADO'),
(14, '2020-10-21', 1, 1, 'Update', 'SE ACTUALIZÓ UN EMPLEADO'),
(15, '2020-10-21', 1, 1, 'Update', 'SE ACTUALIZÓ UN EMPLEADO'),
(16, '2020-10-21', 1, 1, 'Update', 'SE ACTUALIZÓ UN EMPLEADO'),
(17, '2020-10-21', 1, 1, 'Update', 'SE ACTUALIZÓ UN EMPLEADO'),
(18, '2020-10-21', 1, 1, 'Update', 'SE ACTUALIZÓ UN EMPLEADO'),
(19, '2020-10-21', 1, 1, 'Delete', 'SE ELIMINÓ UN EMPLEADO'),
(20, '2020-10-21', 1, 1, 'Delete', 'SE ELIMINÓ UN EMPLEADO'),
(22, '2020-10-21', 1, 2, 'Update', 'SE BLOQUEÓ UN USUARIO'),
(23, '2020-10-21', 1, 2, 'Update', 'SE BLOQUEÓ UN USUARIO'),
(24, '2020-10-21', 1, 2, 'Update', 'SE ACTIVÓ UN USUARIO'),
(25, '2020-10-21', 1, 10, 'Insert', 'SE INGRESÓ UN NUEVO CARGO'),
(26, '2020-10-21', 1, 10, 'Update', 'SE ACTUALIZÓ EL CARGO'),
(27, '2020-10-21', 1, 10, 'Delete', 'SE ELIMINÓ UN CARGO'),
(28, '2020-10-21', 1, 9, 'Insert', 'SE INGRESÓ UNA NUEVA ESPECIALIDAD'),
(29, '2020-10-21', 1, 9, 'Update', 'SE ACTUALIZÓ UNA ESPECIALIDAD'),
(30, '2020-10-21', 1, 9, 'Delete', 'SE ELIMINÓ UNA ESPECIALIDAD'),
(31, '2020-10-21', 1, 14, 'Insert', 'SE INGRESÓ UN NUEVO SERVICIO'),
(32, '2020-10-21', 1, 14, 'Update', 'SE ACTUALIZÓ EL SERVICIO'),
(33, '2020-10-21', 1, 14, 'Insert', 'SE INGRESÓ UN NUEVO SERVICIO'),
(34, '2020-10-21', 1, 14, 'Update', 'SE ACTUALIZÓ EL SERVICIO'),
(35, '2020-10-21', 1, 14, 'Delete', 'SE ELIMINÓ UN SERVICIO'),
(36, '2020-10-21', 1, 12, 'Insert', 'SE INGRESÓ UN NUEVO ESTADO CIVIL'),
(37, '2020-10-21', 1, 12, 'Update', 'SE ACTUALIZÓ EL ESTADO CIVIL'),
(38, '2020-10-21', 1, 12, 'Delete', 'SE ELIMINÓ ESTADO CIVIL'),
(39, '2020-10-21', 1, 16, 'Insert', 'SE INGRESÓ UN NUEVO SEXO'),
(40, '2020-10-21', 1, 16, 'Update', 'SE ACTUALIZÓ SEXO'),
(41, '2020-10-21', 1, 16, 'Delete', 'SE ELIMINÓ UN SEXO'),
(42, '2020-10-21', 1, 13, 'Insert', 'SE INGRESÓ UNA RELIGION'),
(43, '2020-10-21', 1, 13, 'Insert', 'SE INGRESÓ UNA RELIGION'),
(44, '2020-10-21', 1, 13, 'Update', 'SE ACTUALIZÓ UNA RELIGION'),
(45, '2020-10-21', 1, 13, 'Update', 'SE ACTUALIZÓ UNA RELIGION'),
(46, '2020-10-21', 1, 13, 'Delete', 'SE ELIMINÓ UNA RELIGIÓN'),
(47, '2020-10-21', 1, 13, 'Delete', 'SE ELIMINÓ UNA RELIGIÓN'),
(48, '2020-10-21', 1, 13, 'Insert', 'SE INGRESÓ UNA RELIGION'),
(49, '2020-10-21', 1, 13, 'Update', 'SE ACTUALIZÓ UNA RELIGION'),
(50, '2020-10-21', 1, 13, 'Delete', 'SE ELIMINÓ UNA RELIGIÓN'),
(51, '2020-10-21', 1, 15, 'Insert', 'SE INGRESÓ UN NUEVO TIPO DE SANGRE'),
(52, '2020-10-21', 1, 10, 'Insert', 'SE INGRESÓ UN NUEVO CARGO'),
(53, '2020-10-21', 1, 10, 'Delete', 'SE ELIMINÓ UN CARGO'),
(54, '2020-10-21', 1, 15, 'Update', 'SE ACTUALIZÓ UN TIPO DE SANGRE'),
(55, '2020-10-21', 1, 15, 'Delete', 'SE ELIMINÓ UN TIPO DE SANGRE'),
(56, '2020-10-21', 1, 11, 'Insert', 'SE INGRESÓ UN NUEVO DIAGNOSTICO'),
(57, '2020-10-21', 1, 11, 'Update', 'SE ACTUALIZÓ UN DIAGNOSTICO'),
(58, '2020-10-21', 1, 11, 'Delete', 'SE ELIMINÓ UN DIAGNÓSTICO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_bitacora_evento`
--
ALTER TABLE `tbl_bitacora_evento`
  ADD PRIMARY KEY (`id_bitacora_evento`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_objeto` (`id_objeto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_bitacora_evento`
--
ALTER TABLE `tbl_bitacora_evento`
  MODIFY `id_bitacora_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_bitacora_evento`
--
ALTER TABLE `tbl_bitacora_evento`
  ADD CONSTRAINT `tbl_bitacora_evento_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_bitacora_evento_ibfk_2` FOREIGN KEY (`id_objeto`) REFERENCES `tbl_objetos` (`id_objeto`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
