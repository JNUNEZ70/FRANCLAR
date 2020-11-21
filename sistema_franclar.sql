-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2020 a las 23:17:54
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `fecha_evento` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_usuario` bigint(3) NOT NULL,
  `id_objeto` bigint(3) NOT NULL,
  `Accion` varchar(30) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_bitacora_evento`
--

INSERT INTO `tbl_bitacora_evento` (`id_bitacora_evento`, `fecha_evento`, `id_usuario`, `id_objeto`, `Accion`, `Descripcion`) VALUES
(1, '2020-10-21 06:00:00', 1, 3, 'Update', 'SE ACTUALIZÓ UN PARAMETRO'),
(2, '2020-10-21 06:00:00', 1, 3, 'Update', 'SE ACTUALIZÓ UN PARÁMETRO'),
(4, '2020-10-21 06:00:00', 1, 10, 'Insert', 'SE INGRESÓ UN NUEVO CARGO'),
(5, '2020-10-21 06:00:00', 1, 10, 'Insert', 'SE INGRESÓ UN NUEVO CARGO'),
(6, '2020-10-21 06:00:00', 1, 10, 'Delete', 'SE ELIMINÓ UN CARGO'),
(7, '2020-10-21 06:00:00', 1, 9, 'Insert', 'SE INGRESÓ UNA NUEVA ESPECIALIDAD'),
(8, '2020-10-21 06:00:00', 1, 9, 'Update', 'SE ACTUALIZÓ UNA ESPECIALIDAD'),
(9, '2020-10-21 06:00:00', 1, 9, 'Delete', 'SE ELIMINÓ UNA ESPECIALIDAD'),
(10, '2020-10-21 06:00:00', 1, 1, 'Insert', 'SE INGRESÓ UN NUEVO EMPLEADO'),
(11, '2020-10-21 06:00:00', 1, 1, 'Update', 'SE ACTUALIZÓ UN EMPLEADO'),
(12, '2020-10-21 06:00:00', 1, 1, 'Delete', 'SE ELIMINÓ UN EMPLEADO'),
(13, '2020-10-21 06:00:00', 1, 1, 'Insert', 'SE INGRESÓ UN NUEVO EMPLEADO'),
(14, '2020-10-21 06:00:00', 1, 1, 'Update', 'SE ACTUALIZÓ UN EMPLEADO'),
(15, '2020-10-21 06:00:00', 1, 1, 'Update', 'SE ACTUALIZÓ UN EMPLEADO'),
(16, '2020-10-21 06:00:00', 1, 1, 'Update', 'SE ACTUALIZÓ UN EMPLEADO'),
(17, '2020-10-21 06:00:00', 1, 1, 'Update', 'SE ACTUALIZÓ UN EMPLEADO'),
(18, '2020-10-21 06:00:00', 1, 1, 'Update', 'SE ACTUALIZÓ UN EMPLEADO'),
(19, '2020-10-21 06:00:00', 1, 1, 'Delete', 'SE ELIMINÓ UN EMPLEADO'),
(20, '2020-10-21 06:00:00', 1, 1, 'Delete', 'SE ELIMINÓ UN EMPLEADO'),
(22, '2020-10-21 06:00:00', 1, 2, 'Update', 'SE BLOQUEÓ UN USUARIO'),
(23, '2020-10-21 06:00:00', 1, 2, 'Update', 'SE BLOQUEÓ UN USUARIO'),
(24, '2020-10-21 06:00:00', 1, 2, 'Update', 'SE ACTIVÓ UN USUARIO'),
(25, '2020-10-21 06:00:00', 1, 10, 'Insert', 'SE INGRESÓ UN NUEVO CARGO'),
(26, '2020-10-21 06:00:00', 1, 10, 'Update', 'SE ACTUALIZÓ EL CARGO'),
(27, '2020-10-21 06:00:00', 1, 10, 'Delete', 'SE ELIMINÓ UN CARGO'),
(28, '2020-10-21 06:00:00', 1, 9, 'Insert', 'SE INGRESÓ UNA NUEVA ESPECIALIDAD'),
(29, '2020-10-21 06:00:00', 1, 9, 'Update', 'SE ACTUALIZÓ UNA ESPECIALIDAD'),
(30, '2020-10-21 06:00:00', 1, 9, 'Delete', 'SE ELIMINÓ UNA ESPECIALIDAD'),
(31, '2020-10-21 06:00:00', 1, 14, 'Insert', 'SE INGRESÓ UN NUEVO SERVICIO'),
(32, '2020-10-21 06:00:00', 1, 14, 'Update', 'SE ACTUALIZÓ EL SERVICIO'),
(33, '2020-10-21 06:00:00', 1, 14, 'Insert', 'SE INGRESÓ UN NUEVO SERVICIO'),
(34, '2020-10-21 06:00:00', 1, 14, 'Update', 'SE ACTUALIZÓ EL SERVICIO'),
(35, '2020-10-21 06:00:00', 1, 14, 'Delete', 'SE ELIMINÓ UN SERVICIO'),
(36, '2020-10-21 06:00:00', 1, 12, 'Insert', 'SE INGRESÓ UN NUEVO ESTADO CIVIL'),
(37, '2020-10-21 06:00:00', 1, 12, 'Update', 'SE ACTUALIZÓ EL ESTADO CIVIL'),
(38, '2020-10-21 06:00:00', 1, 12, 'Delete', 'SE ELIMINÓ ESTADO CIVIL'),
(39, '2020-10-21 06:00:00', 1, 16, 'Insert', 'SE INGRESÓ UN NUEVO SEXO'),
(40, '2020-10-21 06:00:00', 1, 16, 'Update', 'SE ACTUALIZÓ SEXO'),
(41, '2020-10-21 06:00:00', 1, 16, 'Delete', 'SE ELIMINÓ UN SEXO'),
(42, '2020-10-21 06:00:00', 1, 13, 'Insert', 'SE INGRESÓ UNA RELIGION'),
(43, '2020-10-21 06:00:00', 1, 13, 'Insert', 'SE INGRESÓ UNA RELIGION'),
(44, '2020-10-21 06:00:00', 1, 13, 'Update', 'SE ACTUALIZÓ UNA RELIGION'),
(45, '2020-10-21 06:00:00', 1, 13, 'Update', 'SE ACTUALIZÓ UNA RELIGION'),
(46, '2020-10-21 06:00:00', 1, 13, 'Delete', 'SE ELIMINÓ UNA RELIGIÓN'),
(47, '2020-10-21 06:00:00', 1, 13, 'Delete', 'SE ELIMINÓ UNA RELIGIÓN'),
(48, '2020-10-21 06:00:00', 1, 13, 'Insert', 'SE INGRESÓ UNA RELIGION'),
(49, '2020-10-21 06:00:00', 1, 13, 'Update', 'SE ACTUALIZÓ UNA RELIGION'),
(50, '2020-10-21 06:00:00', 1, 13, 'Delete', 'SE ELIMINÓ UNA RELIGIÓN'),
(51, '2020-10-21 06:00:00', 1, 15, 'Insert', 'SE INGRESÓ UN NUEVO TIPO DE SANGRE'),
(52, '2020-10-21 06:00:00', 1, 10, 'Insert', 'SE INGRESÓ UN NUEVO CARGO'),
(53, '2020-10-21 06:00:00', 1, 10, 'Delete', 'SE ELIMINÓ UN CARGO'),
(54, '2020-10-21 06:00:00', 1, 15, 'Update', 'SE ACTUALIZÓ UN TIPO DE SANGRE'),
(55, '2020-10-21 06:00:00', 1, 15, 'Delete', 'SE ELIMINÓ UN TIPO DE SANGRE'),
(56, '2020-10-21 06:00:00', 1, 11, 'Insert', 'SE INGRESÓ UN NUEVO DIAGNOSTICO'),
(57, '2020-10-21 06:00:00', 1, 11, 'Update', 'SE ACTUALIZÓ UN DIAGNOSTICO'),
(58, '2020-10-21 06:00:00', 1, 11, 'Delete', 'SE ELIMINÓ UN DIAGNÓSTICO'),
(59, '2020-10-21 06:00:00', 1, 2, 'Update', 'SE ACTUALIZÓ UN USUARIO'),
(60, '2020-10-21 06:00:00', 1, 2, 'Update', 'SE ACTUALIZÓ UN USUARIO'),
(61, '2020-10-21 06:00:00', 1, 2, 'Update', 'SE ACTIVÓ UN USUARIO'),
(62, '2020-10-21 06:00:00', 1, 2, 'Update', 'SE ACTIVÓ UN USUARIO'),
(63, '2020-10-21 06:00:00', 1, 2, 'Update', 'SE BLOQUEÓ UN USUARIO'),
(64, '2020-10-21 06:00:00', 1, 2, 'Update', 'SE ACTUALIZÓ UN USUARIO'),
(65, '2020-10-21 06:00:00', 1, 2, 'Update', 'SE ACTIVÓ UN USUARIO'),
(66, '2020-10-21 06:00:00', 1, 2, 'Update', 'SE ACTIVÓ UN USUARIO'),
(67, '2020-10-21 06:00:00', 1, 2, 'Update', 'SE ACTUALIZÓ UN USUARIO'),
(68, '2020-10-21 06:00:00', 1, 2, 'Update', 'SE ACTUALIZÓ UN USUARIO'),
(69, '2020-10-21 06:00:00', 1, 1, 'Insert', 'SE INGRESÓ UN NUEVO EMPLEADO'),
(70, '2020-10-21 06:00:00', 1, 2, 'Insert', 'SE INGRESÓ UN NUEVO USUARIO'),
(71, '2020-10-21 06:00:00', 1, 1, 'Insert', 'SE INGRESÓ UN NUEVO EMPLEADO'),
(72, '2020-10-21 06:00:00', 1, 2, 'Insert', 'SE INGRESÓ UN NUEVO USUARIO'),
(73, '2020-10-21 06:00:00', 1, 2, 'Update', 'SE ACTUALIZÓ UN USUARIO'),
(74, '2020-10-21 06:00:00', 1, 2, 'Update', 'SE BLOQUEÓ UN USUARIO'),
(75, '2020-10-22 06:00:00', 1, 2, 'Update', 'SE ACTIVÓ UN USUARIO'),
(77, '2020-10-27 05:31:34', 1, 1, 'Consulta', 'SE CONSULTÓ EN TABLA EMPLEADO'),
(78, '2020-10-27 05:38:20', 1, 1, 'Consulta', 'SE CONSULTÓ EN TABLA EMPLEADO'),
(79, '2020-10-27 05:38:23', 1, 1, 'Consulta', 'SE CONSULTÓ EN TABLA EMPLEADO'),
(80, '2020-10-27 05:46:33', 1, 1, 'Ingreso', 'SE INGRESÓ A LA PANTALLA PERSONAL'),
(81, '2020-10-27 05:46:33', 1, 1, 'Consulta', 'SE CONSULTÓ EN TABLA EMPLEADO'),
(82, '2020-10-27 05:47:52', 1, 1, 'Ingreso', 'INGRESÓ A LA PANTALLA PERSONAL'),
(83, '2020-10-27 05:47:52', 1, 1, 'Consulta', 'CONSULTÓ EN TABLA EMPLEADO'),
(91, '2020-10-27 05:53:07', 1, 1, 'Ingreso', 'INGRESÓ A LA PANTALLA PERSONAL'),
(92, '2020-10-27 05:53:07', 1, 1, 'Consulta', 'CONSULTÓ EN TABLA EMPLEADO'),
(96, '2020-10-27 05:58:28', 1, 1, 'Ingreso', 'INGRESÓ A LA PANTALLA PERSONAL'),
(97, '2020-10-27 05:58:28', 1, 1, 'Consulta', 'CONSULTÓ EN TABLA EMPLEADO'),
(98, '2020-10-27 05:58:51', 1, 1, 'Ingreso', 'INGRESÓ A LA PANTALLA PERSONAL'),
(99, '2020-10-27 05:58:51', 1, 1, 'Consulta', 'CONSULTÓ EN TABLA EMPLEADO'),
(103, '2020-10-27 06:02:25', 1, 1, 'Consulta', 'CONSULTÓ EN TABLA EMPLEADO'),
(104, '2020-10-27 06:03:06', 1, 1, 'Consulta', 'CONSULTÓ EN TABLA EMPLEADO'),
(105, '2020-11-10 02:59:27', 1, 1, 'Consulta', 'CONSULTÓ EN TABLA EMPLEADO'),
(106, '2020-11-10 03:00:56', 1, 2, 'Update', 'SE ACTIVÓ UN USUARIO'),
(107, '2020-11-10 03:01:29', 1, 1, 'Consulta', 'CONSULTÓ EN TABLA EMPLEADO'),
(108, '2020-11-10 03:03:53', 1, 1, 'Consulta', 'CONSULTÓ EN TABLA EMPLEADO'),
(109, '2020-11-10 04:43:41', 1, 2, 'Update', 'SE BLOQUEÓ UN USUARIO'),
(110, '2020-11-10 04:45:22', 1, 2, 'Update', 'SE BLOQUEÓ UN USUARIO'),
(111, '2020-11-10 04:46:31', 1, 2, 'Update', 'SE BLOQUEÓ UN USUARIO'),
(112, '2020-11-10 04:47:00', 1, 2, 'Update', 'SE BLOQUEÓ UN USUARIO'),
(113, '2020-11-12 05:09:08', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(114, '2020-11-12 05:09:15', 1, 3, 'Acceso', 'INGRESO A PANTALLA PARAMETROS'),
(115, '2020-11-12 05:09:20', 1, 3, 'Acceso', 'INGRESO A PANTALLA PARAMETROS'),
(116, '2020-11-12 05:09:25', 1, 3, 'Acceso', 'INGRESO A PANTALLA PARAMETROS'),
(117, '2020-11-12 05:09:30', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(118, '2020-11-12 05:09:53', 1, 3, 'Acceso', 'INGRESO A PANTALLA PARAMETROS'),
(119, '2020-11-15 02:38:13', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(120, '2020-11-15 03:05:21', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(121, '2020-11-15 03:08:58', 1, 3, 'Acceso', 'INGRESO A PANTALLA PARAMETROS'),
(122, '2020-11-17 07:18:56', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(123, '2020-11-17 07:19:45', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(124, '2020-11-17 07:31:50', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(125, '2020-11-17 08:15:33', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(126, '2020-11-17 21:33:11', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(127, '2020-11-17 22:24:48', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(128, '2020-11-18 00:29:14', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(129, '2020-11-18 00:34:59', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(130, '2020-11-18 00:45:53', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(131, '2020-11-18 00:46:29', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(132, '2020-11-18 01:09:56', 1, 3, 'Acceso', 'INGRESO A PANTALLA PARAMETROS'),
(133, '2020-11-18 01:09:58', 1, 3, 'Acceso', 'INGRESO A PANTALLA PARAMETROS'),
(134, '2020-11-18 01:10:08', 1, 3, 'Acceso', 'INGRESO A PANTALLA PARAMETROS'),
(135, '2020-11-18 01:10:12', 1, 3, 'Acceso', 'INGRESO A PANTALLA PARAMETROS'),
(136, '2020-11-21 22:11:00', 1, 3, 'Acceso', 'INGRESO A PANTALLA PARAMETROS'),
(137, '2020-11-21 22:14:47', 1, 3, 'Acceso', 'INGRESO A PANTALLA PARAMETROS'),
(138, '2020-11-21 22:14:49', 1, 3, 'Acceso', 'INGRESO A PANTALLA PARAMETROS'),
(139, '2020-11-21 22:16:27', 1, 3, 'Acceso', 'INGRESO A PANTALLA PARAMETROS'),
(140, '2020-11-21 22:16:40', 1, 3, 'Acceso', 'INGRESO A PANTALLA PARAMETROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cargo`
--

CREATE TABLE `tbl_cargo` (
  `ID_Cargo` int(3) NOT NULL,
  `nomb_cargo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_cargo`
--

INSERT INTO `tbl_cargo` (`ID_Cargo`, `nomb_cargo`) VALUES
(1, 'Doctor(a)'),
(2, 'Enfermero(a)'),
(3, 'Cajero(a)'),
(4, 'Limpieza'),
(5, 'Seguridad'),
(6, 'Auto_Registro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_citas`
--

CREATE TABLE `tbl_citas` (
  `ID_Cita` bigint(3) NOT NULL,
  `ID_Paciente` int(3) NOT NULL,
  `ID_Usuario` bigint(3) NOT NULL,
  `ID_Empleado` int(3) NOT NULL,
  `ID_Especialidad` int(3) NOT NULL,
  `ID_Estado` int(3) NOT NULL,
  `Fec_Creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `Fec_Atencion` date NOT NULL,
  `Hora_Atencion` time NOT NULL,
  `Precio` int(5) NOT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_citas`
--

INSERT INTO `tbl_citas` (`ID_Cita`, `ID_Paciente`, `ID_Usuario`, `ID_Empleado`, `ID_Especialidad`, `ID_Estado`, `Fec_Creacion`, `Fec_Atencion`, `Hora_Atencion`, `Precio`, `Usuario_crea`, `Fec_crea`, `Usuario_modif`, `Fec_modif`) VALUES
(13, 1, 1, 1, 1, 1, '2020-11-18 00:18:36', '2020-11-26', '23:18:00', 5000, NULL, NULL, NULL, NULL),
(14, 1, 1, 1, 1, 1, '2020-11-18 00:19:36', '2020-11-30', '09:00:00', 300, NULL, NULL, NULL, NULL),
(15, 1, 1, 18, 2, 1, '2020-11-18 00:40:59', '2020-11-30', '10:40:00', 500, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_consultas`
--

CREATE TABLE `tbl_consultas` (
  `ID_Consulta` bigint(3) NOT NULL,
  `ID_Cita` bigint(3) NOT NULL,
  `ID_Diagnostico` int(3) NOT NULL,
  `Anamnesis` varchar(500) NOT NULL,
  `Exam_Fisico` varchar(500) NOT NULL,
  `Tratamiento` int(100) NOT NULL,
  `Prox_Cita` int(50) NOT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalle_factura`
--

CREATE TABLE `tbl_detalle_factura` (
  `id_detalle_factura` bigint(3) NOT NULL,
  `ID_factura` bigint(3) NOT NULL,
  `ID_Especialidad` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_diagnosticos`
--

CREATE TABLE `tbl_diagnosticos` (
  `ID_Diagnostico` int(3) NOT NULL,
  `Descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_empleado`
--

CREATE TABLE `tbl_empleado` (
  `ID_Empleado` int(3) NOT NULL,
  `Nom_Empleado` varchar(50) NOT NULL,
  `ID_Sexo` int(1) NOT NULL,
  `ID_Est_Civil` int(3) NOT NULL,
  `ID_Cargo` int(3) NOT NULL,
  `ID_Especialidad` int(3) NOT NULL,
  `Cedula` varchar(13) NOT NULL,
  `Fec_Nacimiento` date NOT NULL,
  `Dir_Empleado` varchar(255) NOT NULL,
  `Tel_Empleado` int(8) NOT NULL,
  `Cel_Empleado` int(8) NOT NULL,
  `Salario` int(6) NOT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_empleado`
--

INSERT INTO `tbl_empleado` (`ID_Empleado`, `Nom_Empleado`, `ID_Sexo`, `ID_Est_Civil`, `ID_Cargo`, `ID_Especialidad`, `Cedula`, `Fec_Nacimiento`, `Dir_Empleado`, `Tel_Empleado`, `Cel_Empleado`, `Salario`, `Usuario_crea`, `Fec_crea`, `Usuario_modif`, `Fec_modif`) VALUES
(1, 'Jean Carlos Núñez Salgado', 1, 2, 1, 1, '', '0000-00-00', 'Col venezuela sector B.....', 22091139, 33876298, 15000, NULL, NULL, NULL, NULL),
(3, 'Carlos Fabricio Nuñez Ramires', 1, 3, 2, 6, '', '0000-00-00', 'Col. Venezuela Sector B Bloque 8 casa 17', 22278000, 33876298, 30000, NULL, NULL, NULL, NULL),
(11, 'JOSUE ALLAN GONZALES RAMIRES', 1, 2, 3, 3, '0801199714588', '1987-10-08', 'WINFEIUFGEFVDFVDF', 22222222, 99999999, 20000, NULL, NULL, NULL, NULL),
(12, 'WILDER EDUARDO RAMIRES ', 1, 1, 5, 7, '0801199714078', '1982-09-05', 'SJDNVSDHOFIVBDVRFGBRGBRFGBGF', 22222222, 88888888, 20000, NULL, NULL, NULL, NULL),
(17, 'JEAN CARLOS NUEZ', 1, 1, 6, 8, '0801199714079', '1980-10-14', 'ASDSDJNSDSDSDSDD', 22222222, 99999999, 0, NULL, NULL, NULL, NULL),
(18, 'JOSUE ROLANDO RAMIRES GONZALES', 1, 1, 1, 2, '0801199714079', '1997-10-14', 'AASSDSSSDDSDSSSDSDSD', 22222222, 99999999, 20000, NULL, NULL, NULL, NULL),
(20, 'JOSUE CACERES ACOSTA', 1, 1, 6, 8, '0801115556666', '1980-10-04', 'SDSDCSDCSDCSD', 22222222, 99999999, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_especialidad`
--

CREATE TABLE `tbl_especialidad` (
  `ID_especialidad` int(3) NOT NULL,
  `Descripcion_espec` varchar(30) NOT NULL,
  `Precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_especialidad`
--

INSERT INTO `tbl_especialidad` (`ID_especialidad`, `Descripcion_espec`, `Precio`) VALUES
(1, 'Medicina General', 0),
(2, 'Ortopedia', 0),
(3, 'Fisioterapia', 0),
(4, 'Nutrición', 0),
(5, 'Odontología', 0),
(6, 'Psicología', 0),
(7, 'Podología', 0),
(8, 'Auto_Registro', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado_cita`
--

CREATE TABLE `tbl_estado_cita` (
  `ID_Estado` int(3) NOT NULL,
  `Descripcion_est_cita` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_estado_cita`
--

INSERT INTO `tbl_estado_cita` (`ID_Estado`, `Descripcion_est_cita`) VALUES
(1, 'Registrada'),
(2, 'Preclinica'),
(3, 'Consulta'),
(4, 'Pagada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado_civil`
--

CREATE TABLE `tbl_estado_civil` (
  `ID_Est_Civil` int(3) NOT NULL,
  `Descripcion_est_civil` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_estado_civil`
--

INSERT INTO `tbl_estado_civil` (`ID_Est_Civil`, `Descripcion_est_civil`) VALUES
(1, 'Soltero(a)'),
(2, 'Casado(a)'),
(3, 'Unión Libre'),
(4, 'Viudo(a)'),
(5, 'Divorciado(a)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado_usuario`
--

CREATE TABLE `tbl_estado_usuario` (
  `ID_Estado` int(3) NOT NULL,
  `Descripcion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_estado_usuario`
--

INSERT INTO `tbl_estado_usuario` (`ID_Estado`, `Descripcion`) VALUES
(1, 'Activo'),
(2, 'Bloqueado'),
(3, 'Recuperación'),
(4, 'Auto_Registro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_expediente`
--

CREATE TABLE `tbl_expediente` (
  `ID_expediente` bigint(3) NOT NULL,
  `ID_paciente` int(3) NOT NULL,
  `ID_consulta` bigint(3) NOT NULL,
  `Usuario_crea` bigint(3) NOT NULL,
  `Fec_crea` date NOT NULL,
  `Usuario_modif` bigint(3) NOT NULL,
  `Fec_modif` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_facturas`
--

CREATE TABLE `tbl_facturas` (
  `ID_factura` bigint(3) NOT NULL,
  `Fec_emision` int(11) NOT NULL,
  `ID_cita` bigint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_hist_contra`
--

CREATE TABLE `tbl_hist_contra` (
  `id_hist` int(3) NOT NULL,
  `id_usuario` bigint(3) NOT NULL,
  `contraseña` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_objetos`
--

CREATE TABLE `tbl_objetos` (
  `id_objeto` bigint(3) NOT NULL,
  `objeto` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_objetos`
--

INSERT INTO `tbl_objetos` (`id_objeto`, `objeto`) VALUES
(1, 'vista_personal'),
(2, 'vista_usuarios'),
(3, 'vista_parametros'),
(4, 'vista_pacientes'),
(5, 'vista_consultas'),
(6, 'vista_preclinica'),
(7, 'vista_citas'),
(8, 'vista_caja'),
(9, 'vista_especialidad'),
(10, 'vista_cargo'),
(11, 'vista_diagnóstico'),
(12, 'vista_estado civil'),
(13, 'vista_religiones'),
(14, 'vista_servicios'),
(15, 'vista_tipo de sangre'),
(16, 'vista_sexo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pacientes`
--

CREATE TABLE `tbl_pacientes` (
  `ID_Paciente` int(3) NOT NULL,
  `cedula` varchar(13) NOT NULL,
  `ID_Sexo` int(1) NOT NULL,
  `ID_Est_Civil` int(3) NOT NULL,
  `ID_Tipo_Sangre` int(3) NOT NULL,
  `ID_Religion` int(3) NOT NULL,
  `ID_TipoPaciente` int(3) NOT NULL,
  `Nom_Paciente` varchar(255) NOT NULL,
  `Fec_Nacimiento` date NOT NULL,
  `Edad` int(3) NOT NULL,
  `Dir_Paciente` varchar(255) NOT NULL,
  `Tel_Paciente` int(8) NOT NULL,
  `Cel_Paciente` int(8) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contacto_Emergencia` varchar(40) NOT NULL,
  `Parentesco` varchar(20) NOT NULL,
  `Tel_Emergencia` int(8) NOT NULL,
  `Cel_Emergencia` int(8) NOT NULL,
  `Antecedentes_Personales` varchar(500) DEFAULT NULL,
  `Antecedentes_Hospitalarios` varchar(500) DEFAULT NULL,
  `Antecedentes_Alergicos` varchar(500) DEFAULT NULL,
  `Antecedentes_Familiares` varchar(500) DEFAULT NULL,
  `Habitos` varchar(500) DEFAULT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_pacientes`
--

INSERT INTO `tbl_pacientes` (`ID_Paciente`, `cedula`, `ID_Sexo`, `ID_Est_Civil`, `ID_Tipo_Sangre`, `ID_Religion`, `ID_TipoPaciente`, `Nom_Paciente`, `Fec_Nacimiento`, `Edad`, `Dir_Paciente`, `Tel_Paciente`, `Cel_Paciente`, `Email`, `Contacto_Emergencia`, `Parentesco`, `Tel_Emergencia`, `Cel_Emergencia`, `Antecedentes_Personales`, `Antecedentes_Hospitalarios`, `Antecedentes_Alergicos`, `Antecedentes_Familiares`, `Habitos`, `Usuario_crea`, `Fec_crea`, `Usuario_modif`, `Fec_modif`) VALUES
(1, '0801199714079', 1, 1, 7, 2, 2, 'JEAN CARLOS NUÑEZ RAMIRES', '1997-07-06', 24, 'SADSDMFVIDFVBDFHVBDSFVSDFVDFVSDFDFVDSF', 22222222, 99999999, 'nuez.jeancarlos@gmail.com', 'Juanita Salgado', 'Madre', 22222222, 99999999, 'aaaaaaaaaaaaaaaaaaasddcsd', 'aaaaaaaaaaaaaaaaaaasdssd', 'asssssssssssssssssssssssssxsd', 'asdddddddddddddddddddddddddd', 'assssssssssssssssssssssssssssssssssssssss', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_parametros`
--

CREATE TABLE `tbl_parametros` (
  `id_parametro` int(3) NOT NULL,
  `parametro` varchar(25) NOT NULL,
  `valor` varchar(25) NOT NULL,
  `id_usuario` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_parametros`
--

INSERT INTO `tbl_parametros` (`id_parametro`, `parametro`, `valor`, `id_usuario`, `Fec_crea`, `Fec_modif`) VALUES
(1, 'INTENTOS_INGRESO', '2', 1, '2020-10-04', '2020-10-04'),
(2, 'PREGUNTAS_RECUPERACIÓN', '3', NULL, NULL, NULL);

--
-- Disparadores `tbl_parametros`
--
DELIMITER $$
CREATE TRIGGER `trgr_parametro_delete` AFTER DELETE ON `tbl_parametros` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_anterior)VALUES('tbl_parametros',OLD.id_parametro,CURRENT_USER,'Se eliminó un parámetro',concat('Información eliminada: ',OLD.parametro,' ',OLD.valor));

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_parametro_insert` AFTER INSERT ON `tbl_parametros` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual)VALUES('tbl_parametros',NEW.id_parametro,CURRENT_USER,'Se insertó un nuevo parámetro',concat('Información insertada: ',NEW.parametro,' ',NEW.valor));

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_parametro_update` AFTER UPDATE ON `tbl_parametros` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual,informacion_anterior)VALUES('tbl_parametros',OLD.id_parametro,CURRENT_USER,'Se actualizó un parámetro',concat('Información actualizada: ',NEW.parametro,' ',NEW.valor),concat('Información anterior: ',OLD.parametro,' ',OLD.valor));

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_parametro_sistema`
--

CREATE TABLE `tbl_parametro_sistema` (
  `id_parametro` int(11) NOT NULL,
  `parametro` varchar(25) NOT NULL,
  `valor` varchar(25) NOT NULL,
  `fecha_cra` date NOT NULL,
  `fecha_modif` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_parametro_sistema`
--

INSERT INTO `tbl_parametro_sistema` (`id_parametro`, `parametro`, `valor`, `fecha_cra`, `fecha_modif`) VALUES
(1, 'USUARIODB', 'root', '0000-00-00', '0000-00-00'),
(2, 'SERVIDORDB', 'localhost', '0000-00-00', '0000-00-00'),
(3, 'NOMBREDB', 'sistema_franclar', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_permisos`
--

CREATE TABLE `tbl_permisos` (
  `id_permiso` bigint(3) NOT NULL,
  `id_rol` bigint(3) NOT NULL,
  `id_objeto` bigint(3) NOT NULL,
  `permiso_insertar` varchar(1) NOT NULL,
  `permiso_eliminar` varchar(1) NOT NULL,
  `permiso_actualizar` varchar(1) NOT NULL,
  `permiso_consultar` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_preclinica`
--

CREATE TABLE `tbl_preclinica` (
  `ID_Preclinica` bigint(3) NOT NULL,
  `ID_Cita` bigint(3) NOT NULL,
  `P/A` varchar(10) NOT NULL,
  `FC` varchar(10) NOT NULL,
  `FR` int(3) NOT NULL,
  `Temp` int(3) NOT NULL,
  `PAM` varchar(10) NOT NULL,
  `Glucometria` int(4) NOT NULL,
  `Peso` int(10) NOT NULL,
  `Talla` int(6) NOT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_preguntas`
--

CREATE TABLE `tbl_preguntas` (
  `ID_Pregunta` bigint(3) NOT NULL,
  `Pregunta` varchar(100) NOT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_preguntas`
--

INSERT INTO `tbl_preguntas` (`ID_Pregunta`, `Pregunta`, `Usuario_crea`, `Fec_crea`, `Usuario_modif`, `Fec_modif`) VALUES
(1, '¿Cuál es el nombre de su mamá?', NULL, NULL, NULL, NULL),
(2, '¿Cuál es el nombre de su primer mascota?', NULL, NULL, NULL, NULL),
(3, '¿Cuál es su color favorito?', NULL, NULL, NULL, NULL),
(4, '¿Cuál es su comida favorita?', NULL, NULL, NULL, NULL),
(5, '¿Cuál es el nombre de su padre?', NULL, NULL, NULL, NULL),
(6, '¿Cómo se llama su primo mayor?', NULL, NULL, NULL, NULL),
(7, '¿Cómo se llama su tío favorito?', NULL, NULL, NULL, NULL),
(8, '¿Cómo se llama su primera escuela?', NULL, NULL, NULL, NULL),
(9, '¿Cómo se llama su tía favorita?', NULL, NULL, NULL, NULL),
(10, '¿Cuál es el nombre de su primer pareja?', NULL, NULL, NULL, NULL);

--
-- Disparadores `tbl_preguntas`
--
DELIMITER $$
CREATE TRIGGER `trgr_preguntas_delete` AFTER DELETE ON `tbl_preguntas` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_anterior)VALUES('tbl_preguntas',OLD.ID_Pregunta,CURRENT_USER,'Se eliminó una pregunta',concat('Información eliminada: ',OLD.Pregunta));

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_preguntas_insert` AFTER INSERT ON `tbl_preguntas` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual)VALUES('tbl_preguntas',NEW.ID_Pregunta,CURRENT_USER,'Se insertó una nueva pregunta',concat('Información insertada: ',NEW.Pregunta));

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_preguntas_update` AFTER UPDATE ON `tbl_preguntas` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual,informacion_anterior)VALUES('tbl_preguntas',OLD.ID_Pregunta,CURRENT_USER,'Se actualizó una nueva pregunta',concat('Información actualizada: ',NEW.Pregunta),concat('Información anterior: ',OLD.Pregunta));


END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pregunta_usuario`
--

CREATE TABLE `tbl_pregunta_usuario` (
  `id_pregunta_usuario` bigint(3) NOT NULL,
  `ID_Pregunta` bigint(3) NOT NULL,
  `ID_Usuario` bigint(3) NOT NULL,
  `Respuesta` varchar(100) NOT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_pregunta_usuario`
--

INSERT INTO `tbl_pregunta_usuario` (`id_pregunta_usuario`, `ID_Pregunta`, `ID_Usuario`, `Respuesta`, `Usuario_crea`, `Fec_crea`, `Usuario_modif`, `Fec_modif`) VALUES
(48, 1, 18, 'sdsdfdsfdf', NULL, NULL, NULL, NULL),
(49, 2, 18, 'sasdsd', NULL, NULL, NULL, NULL),
(50, 3, 18, 'sdsd', NULL, NULL, NULL, NULL),
(51, 1, 11, 'XXX', NULL, NULL, NULL, NULL),
(52, 2, 11, 'XXX', NULL, NULL, NULL, NULL),
(53, 3, 11, 'XXX', NULL, NULL, NULL, NULL);

--
-- Disparadores `tbl_pregunta_usuario`
--
DELIMITER $$
CREATE TRIGGER `trgr_preguntas_usuario_delete` AFTER DELETE ON `tbl_pregunta_usuario` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_anterior)VALUES('tbl_pregunta_usuario',OLD.id_pregunta_usuario,CURRENT_USER,'Se eliminó una respuesta de un usuario',concat('Información eliminada: ',OLD.ID_Pregunta,' ',OLD.ID_Usuario,' ',OLD.Respuesta));

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_preguntas_usuario_insert` AFTER INSERT ON `tbl_pregunta_usuario` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual)VALUES('tbl_pregunta_usuario',NEW.id_pregunta_usuario,CURRENT_USER,'Se insertó una nueva respuesta de un usuario',concat('Información insertada: ',NEW.ID_Pregunta,' ',NEW.ID_Usuario,' ',NEW.Respuesta));

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_preguntas_usuario_update` AFTER UPDATE ON `tbl_pregunta_usuario` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual,informacion_anterior)VALUES('tbl_pregunta_usuario',NEW.id_pregunta_usuario,CURRENT_USER,'Se actualizó una respuesta de un usuario',concat('Información actualizada: ',NEW.ID_Pregunta,' ',NEW.ID_Usuario,' ',NEW.Respuesta),concat('Información anterior: ',OLD.ID_Pregunta,' ',OLD.ID_Usuario,' ',OLD.Respuesta));

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_religion`
--

CREATE TABLE `tbl_religion` (
  `ID_Religion` int(3) NOT NULL,
  `Descripcion_Religion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_religion`
--

INSERT INTO `tbl_religion` (`ID_Religion`, `Descripcion_Religion`) VALUES
(1, 'Católico(a)'),
(2, 'Evangélico(a)'),
(3, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `ID_Rol` bigint(3) NOT NULL,
  `Rol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_roles`
--

INSERT INTO `tbl_roles` (`ID_Rol`, `Rol`) VALUES
(1, 'Admin'),
(2, 'Doctor'),
(3, 'Enfermero'),
(4, 'Cajero'),
(5, 'Auto_Registro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_servicio`
--

CREATE TABLE `tbl_servicio` (
  `ID_Servicio` int(3) NOT NULL,
  `Descripcion_servicio` varchar(50) NOT NULL,
  `Precio` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_servicio`
--

INSERT INTO `tbl_servicio` (`ID_Servicio`, `Descripcion_servicio`, `Precio`) VALUES
(1, 'Medicina General', 200),
(2, 'Psicología', 300),
(3, 'Pediatría', 400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_sexo`
--

CREATE TABLE `tbl_sexo` (
  `ID_Sexo` int(1) NOT NULL,
  `Descripcion_sexo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_sexo`
--

INSERT INTO `tbl_sexo` (`ID_Sexo`, `Descripcion_sexo`) VALUES
(1, 'Masculino'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_paciente`
--

CREATE TABLE `tbl_tipo_paciente` (
  `ID_TipoPaciente` int(3) NOT NULL,
  `Descripcion_Tipo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_tipo_paciente`
--

INSERT INTO `tbl_tipo_paciente` (`ID_TipoPaciente`, `Descripcion_Tipo`) VALUES
(1, 'Pediatría'),
(2, 'Normal'),
(3, 'diabético');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_sangre`
--

CREATE TABLE `tbl_tipo_sangre` (
  `ID_Tipo_Sangre` int(3) NOT NULL,
  `Descripcion_Sangre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_tipo_sangre`
--

INSERT INTO `tbl_tipo_sangre` (`ID_Tipo_Sangre`, `Descripcion_Sangre`) VALUES
(1, 'A Positivo'),
(2, 'A Negativo'),
(3, 'B Positivo'),
(4, 'B Negativo'),
(5, 'O Positivo'),
(6, 'O Negativo'),
(7, 'AB Positivo'),
(8, 'AB Negativo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `ID_Usuario` bigint(3) NOT NULL,
  `ID_Empleado` int(3) NOT NULL,
  `ID_Estado` int(3) NOT NULL,
  `Nom_Usuario` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `Contraseña` varchar(30) NOT NULL,
  `ID_Rol` bigint(3) NOT NULL,
  `Ult_Conexion` date DEFAULT NULL,
  `Primer_Ingreso` int(1) NOT NULL,
  `Fec_venc` date DEFAULT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL,
  `preguntas_contestadas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`ID_Usuario`, `ID_Empleado`, `ID_Estado`, `Nom_Usuario`, `email`, `Contraseña`, `ID_Rol`, `Ult_Conexion`, `Primer_Ingreso`, `Fec_venc`, `Usuario_crea`, `Fec_crea`, `Usuario_modif`, `Fec_modif`, `preguntas_contestadas`) VALUES
(1, 1, 1, 'ADMIN', 'soportefranclar@gmail.com', 'Franclar#2020', 1, '2020-10-04', 0, '2020-10-04', NULL, NULL, NULL, NULL, 0),
(9, 11, 1, 'JGONZALES', 'jsdiksndsdsd@gmail.com', 'OtvJY]Jf', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0),
(11, 12, 2, 'WRAMIRES', 'jidndf@gmail.com', 'Minuto#2020', 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, 3),
(15, 17, 2, 'JEANNUNEZ', 'jean.nunez@gmail.com', 'Minuto#2020', 5, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0),
(16, 18, 2, 'JOSUERAMIRES', 'jenaas.sdsd@gmail.com', 'Xi0_Sa7]', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0),
(18, 20, 2, 'JOSUERS', 'sjsdddssd@gmail.com', 'Minuto$2020', 3, NULL, 0, NULL, NULL, NULL, NULL, NULL, 3);

--
-- Disparadores `tbl_usuario`
--
DELIMITER $$
CREATE TRIGGER `trgr_usuario_delete` AFTER DELETE ON `tbl_usuario` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_anterior)VALUES('tbl_usuario',OLD.ID_Usuario,CURRENT_USER,'Se eliminó un usuario',concat('Información eliminada: ',OLD.ID_Empleado,' ',OLD.ID_Estado,' ',OLD.Nom_Usuario,' ',OLD.Contraseña,' ',OLD.ID_Rol,' ',OLD.Primer_Ingreso));


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_usuario_insert` AFTER INSERT ON `tbl_usuario` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual)VALUES('tbl_usuario',NEW.ID_Usuario,CURRENT_USER,'Se insertó un nuevo usuario',concat('Información insertada: ',NEW.ID_Empleado,' ',NEW.ID_Estado,' ',NEW.Nom_Usuario,' ',NEW.Contraseña,' ',NEW.ID_Rol,' ',NEW.Primer_Ingreso));

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_usuario_update` AFTER UPDATE ON `tbl_usuario` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora_registro(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual,informacion_anterior)VALUES('tbl_usuario',OLD.ID_Usuario,CURRENT_USER,'Se actualizó un usuario',concat('Información actualizada: ',NEW.ID_Empleado,' ',NEW.ID_Estado,' ',NEW.Nom_Usuario,' ',NEW.Contraseña,' ',NEW.ID_Rol,' ',NEW.Primer_Ingreso),concat('Información anterior: ',OLD.ID_Empleado,' ',OLD.ID_Estado,' ',OLD.Nom_Usuario,' ',OLD.Contraseña,' ',OLD.ID_Rol,' ',OLD.Primer_Ingreso));

END
$$
DELIMITER ;

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
-- Indices de la tabla `tbl_cargo`
--
ALTER TABLE `tbl_cargo`
  ADD PRIMARY KEY (`ID_Cargo`);

--
-- Indices de la tabla `tbl_citas`
--
ALTER TABLE `tbl_citas`
  ADD PRIMARY KEY (`ID_Cita`),
  ADD KEY `ID_Paciente` (`ID_Paciente`),
  ADD KEY `ID_Usuario` (`ID_Usuario`),
  ADD KEY `ID_Servicio` (`ID_Especialidad`),
  ADD KEY `ID_Estado` (`ID_Estado`),
  ADD KEY `ID_Empleado` (`ID_Empleado`);

--
-- Indices de la tabla `tbl_consultas`
--
ALTER TABLE `tbl_consultas`
  ADD PRIMARY KEY (`ID_Consulta`),
  ADD KEY `ID_Atencion` (`ID_Cita`),
  ADD KEY `ID_Diagnostico` (`ID_Diagnostico`),
  ADD KEY `ID_Cita` (`ID_Cita`);

--
-- Indices de la tabla `tbl_detalle_factura`
--
ALTER TABLE `tbl_detalle_factura`
  ADD PRIMARY KEY (`id_detalle_factura`),
  ADD KEY `ID_factura` (`ID_factura`),
  ADD KEY `ID_servicio` (`ID_Especialidad`);

--
-- Indices de la tabla `tbl_diagnosticos`
--
ALTER TABLE `tbl_diagnosticos`
  ADD PRIMARY KEY (`ID_Diagnostico`);

--
-- Indices de la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
  ADD PRIMARY KEY (`ID_Empleado`),
  ADD KEY `ID_Sexo` (`ID_Sexo`),
  ADD KEY `ID_Est_Civil` (`ID_Est_Civil`),
  ADD KEY `ID_Cargo` (`ID_Cargo`),
  ADD KEY `ID_Especialidad` (`ID_Especialidad`),
  ADD KEY `id_cargo_2` (`ID_Cargo`),
  ADD KEY `id_cargo_3` (`ID_Cargo`);

--
-- Indices de la tabla `tbl_especialidad`
--
ALTER TABLE `tbl_especialidad`
  ADD PRIMARY KEY (`ID_especialidad`);

--
-- Indices de la tabla `tbl_estado_cita`
--
ALTER TABLE `tbl_estado_cita`
  ADD PRIMARY KEY (`ID_Estado`);

--
-- Indices de la tabla `tbl_estado_civil`
--
ALTER TABLE `tbl_estado_civil`
  ADD PRIMARY KEY (`ID_Est_Civil`);

--
-- Indices de la tabla `tbl_estado_usuario`
--
ALTER TABLE `tbl_estado_usuario`
  ADD PRIMARY KEY (`ID_Estado`);

--
-- Indices de la tabla `tbl_expediente`
--
ALTER TABLE `tbl_expediente`
  ADD PRIMARY KEY (`ID_expediente`),
  ADD KEY `ID_paciente` (`ID_paciente`),
  ADD KEY `ID_consulta` (`ID_consulta`);

--
-- Indices de la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  ADD PRIMARY KEY (`ID_factura`),
  ADD KEY `ID_cita` (`ID_cita`);

--
-- Indices de la tabla `tbl_hist_contra`
--
ALTER TABLE `tbl_hist_contra`
  ADD PRIMARY KEY (`id_hist`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `tbl_objetos`
--
ALTER TABLE `tbl_objetos`
  ADD PRIMARY KEY (`id_objeto`);

--
-- Indices de la tabla `tbl_pacientes`
--
ALTER TABLE `tbl_pacientes`
  ADD PRIMARY KEY (`ID_Paciente`),
  ADD KEY `ID_Sexo` (`ID_Sexo`),
  ADD KEY `ID_Est_Civil` (`ID_Est_Civil`),
  ADD KEY `ID_Tipo_Sangre` (`ID_Tipo_Sangre`),
  ADD KEY `ID_Religion` (`ID_Religion`),
  ADD KEY `ID_TipoPaciente` (`ID_TipoPaciente`);

--
-- Indices de la tabla `tbl_parametros`
--
ALTER TABLE `tbl_parametros`
  ADD PRIMARY KEY (`id_parametro`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `tbl_parametro_sistema`
--
ALTER TABLE `tbl_parametro_sistema`
  ADD PRIMARY KEY (`id_parametro`);

--
-- Indices de la tabla `tbl_permisos`
--
ALTER TABLE `tbl_permisos`
  ADD PRIMARY KEY (`id_permiso`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_objeto` (`id_objeto`);

--
-- Indices de la tabla `tbl_preclinica`
--
ALTER TABLE `tbl_preclinica`
  ADD PRIMARY KEY (`ID_Preclinica`),
  ADD KEY `ID_Cita` (`ID_Cita`);

--
-- Indices de la tabla `tbl_preguntas`
--
ALTER TABLE `tbl_preguntas`
  ADD PRIMARY KEY (`ID_Pregunta`);

--
-- Indices de la tabla `tbl_pregunta_usuario`
--
ALTER TABLE `tbl_pregunta_usuario`
  ADD PRIMARY KEY (`id_pregunta_usuario`),
  ADD KEY `ID_Pregunta` (`ID_Pregunta`),
  ADD KEY `ID_Usuario` (`ID_Usuario`);

--
-- Indices de la tabla `tbl_religion`
--
ALTER TABLE `tbl_religion`
  ADD PRIMARY KEY (`ID_Religion`);

--
-- Indices de la tabla `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`ID_Rol`);

--
-- Indices de la tabla `tbl_servicio`
--
ALTER TABLE `tbl_servicio`
  ADD PRIMARY KEY (`ID_Servicio`);

--
-- Indices de la tabla `tbl_sexo`
--
ALTER TABLE `tbl_sexo`
  ADD PRIMARY KEY (`ID_Sexo`);

--
-- Indices de la tabla `tbl_tipo_paciente`
--
ALTER TABLE `tbl_tipo_paciente`
  ADD PRIMARY KEY (`ID_TipoPaciente`);

--
-- Indices de la tabla `tbl_tipo_sangre`
--
ALTER TABLE `tbl_tipo_sangre`
  ADD PRIMARY KEY (`ID_Tipo_Sangre`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`ID_Usuario`),
  ADD KEY `ID_Empleado` (`ID_Empleado`),
  ADD KEY `ID_Estado` (`ID_Estado`),
  ADD KEY `ID_Rol` (`ID_Rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_bitacora_evento`
--
ALTER TABLE `tbl_bitacora_evento`
  MODIFY `id_bitacora_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT de la tabla `tbl_cargo`
--
ALTER TABLE `tbl_cargo`
  MODIFY `ID_Cargo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tbl_citas`
--
ALTER TABLE `tbl_citas`
  MODIFY `ID_Cita` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tbl_consultas`
--
ALTER TABLE `tbl_consultas`
  MODIFY `ID_Consulta` bigint(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_detalle_factura`
--
ALTER TABLE `tbl_detalle_factura`
  MODIFY `id_detalle_factura` bigint(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_diagnosticos`
--
ALTER TABLE `tbl_diagnosticos`
  MODIFY `ID_Diagnostico` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
  MODIFY `ID_Empleado` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tbl_especialidad`
--
ALTER TABLE `tbl_especialidad`
  MODIFY `ID_especialidad` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_estado_civil`
--
ALTER TABLE `tbl_estado_civil`
  MODIFY `ID_Est_Civil` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_expediente`
--
ALTER TABLE `tbl_expediente`
  MODIFY `ID_expediente` bigint(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  MODIFY `ID_factura` bigint(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_hist_contra`
--
ALTER TABLE `tbl_hist_contra`
  MODIFY `id_hist` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_pacientes`
--
ALTER TABLE `tbl_pacientes`
  MODIFY `ID_Paciente` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_parametros`
--
ALTER TABLE `tbl_parametros`
  MODIFY `id_parametro` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_parametro_sistema`
--
ALTER TABLE `tbl_parametro_sistema`
  MODIFY `id_parametro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_permisos`
--
ALTER TABLE `tbl_permisos`
  MODIFY `id_permiso` bigint(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_preclinica`
--
ALTER TABLE `tbl_preclinica`
  MODIFY `ID_Preclinica` bigint(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_preguntas`
--
ALTER TABLE `tbl_preguntas`
  MODIFY `ID_Pregunta` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_pregunta_usuario`
--
ALTER TABLE `tbl_pregunta_usuario`
  MODIFY `id_pregunta_usuario` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `tbl_religion`
--
ALTER TABLE `tbl_religion`
  MODIFY `ID_Religion` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_servicio`
--
ALTER TABLE `tbl_servicio`
  MODIFY `ID_Servicio` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_sexo`
--
ALTER TABLE `tbl_sexo`
  MODIFY `ID_Sexo` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_tipo_sangre`
--
ALTER TABLE `tbl_tipo_sangre`
  MODIFY `ID_Tipo_Sangre` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `ID_Usuario` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_bitacora_evento`
--
ALTER TABLE `tbl_bitacora_evento`
  ADD CONSTRAINT `tbl_bitacora_evento_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_bitacora_evento_ibfk_2` FOREIGN KEY (`id_objeto`) REFERENCES `tbl_objetos` (`id_objeto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_citas`
--
ALTER TABLE `tbl_citas`
  ADD CONSTRAINT `tbl_citas_ibfk_4` FOREIGN KEY (`ID_Estado`) REFERENCES `tbl_estado_cita` (`ID_Estado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_citas_ibfk_5` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbl_usuario` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_citas_ibfk_7` FOREIGN KEY (`ID_Paciente`) REFERENCES `tbl_pacientes` (`ID_Paciente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_citas_ibfk_8` FOREIGN KEY (`ID_Especialidad`) REFERENCES `tbl_especialidad` (`ID_especialidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_citas_ibfk_9` FOREIGN KEY (`ID_Empleado`) REFERENCES `tbl_empleado` (`ID_Empleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_consultas`
--
ALTER TABLE `tbl_consultas`
  ADD CONSTRAINT `tbl_consultas_ibfk_3` FOREIGN KEY (`ID_Cita`) REFERENCES `tbl_citas` (`ID_Cita`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_consultas_ibfk_4` FOREIGN KEY (`ID_Diagnostico`) REFERENCES `tbl_diagnosticos` (`ID_Diagnostico`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_detalle_factura`
--
ALTER TABLE `tbl_detalle_factura`
  ADD CONSTRAINT `tbl_detalle_factura_ibfk_3` FOREIGN KEY (`ID_factura`) REFERENCES `tbl_facturas` (`ID_factura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detalle_factura_ibfk_4` FOREIGN KEY (`ID_Especialidad`) REFERENCES `tbl_especialidad` (`ID_especialidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
  ADD CONSTRAINT `tbl_empleado_ibfk_6` FOREIGN KEY (`ID_Cargo`) REFERENCES `tbl_cargo` (`ID_Cargo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_empleado_ibfk_7` FOREIGN KEY (`ID_Especialidad`) REFERENCES `tbl_especialidad` (`ID_especialidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_empleado_ibfk_8` FOREIGN KEY (`ID_Est_Civil`) REFERENCES `tbl_estado_civil` (`ID_Est_Civil`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_empleado_ibfk_9` FOREIGN KEY (`ID_Sexo`) REFERENCES `tbl_sexo` (`ID_Sexo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_expediente`
--
ALTER TABLE `tbl_expediente`
  ADD CONSTRAINT `tbl_expediente_ibfk_1` FOREIGN KEY (`ID_consulta`) REFERENCES `tbl_consultas` (`ID_Consulta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_expediente_ibfk_2` FOREIGN KEY (`ID_paciente`) REFERENCES `tbl_pacientes` (`ID_Paciente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  ADD CONSTRAINT `tbl_facturas_ibfk_1` FOREIGN KEY (`ID_cita`) REFERENCES `tbl_citas` (`ID_Cita`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_hist_contra`
--
ALTER TABLE `tbl_hist_contra`
  ADD CONSTRAINT `tbl_hist_contra_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_pacientes`
--
ALTER TABLE `tbl_pacientes`
  ADD CONSTRAINT `tbl_pacientes_ibfk_1` FOREIGN KEY (`ID_TipoPaciente`) REFERENCES `tbl_tipo_paciente` (`ID_TipoPaciente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pacientes_ibfk_10` FOREIGN KEY (`ID_Tipo_Sangre`) REFERENCES `tbl_tipo_sangre` (`ID_Tipo_Sangre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pacientes_ibfk_7` FOREIGN KEY (`ID_Est_Civil`) REFERENCES `tbl_estado_civil` (`ID_Est_Civil`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pacientes_ibfk_8` FOREIGN KEY (`ID_Sexo`) REFERENCES `tbl_sexo` (`ID_Sexo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pacientes_ibfk_9` FOREIGN KEY (`ID_Religion`) REFERENCES `tbl_religion` (`ID_Religion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_permisos`
--
ALTER TABLE `tbl_permisos`
  ADD CONSTRAINT `tbl_permisos_ibfk_1` FOREIGN KEY (`id_objeto`) REFERENCES `tbl_objetos` (`id_objeto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_permisos_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `tbl_roles` (`ID_Rol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_preclinica`
--
ALTER TABLE `tbl_preclinica`
  ADD CONSTRAINT `tbl_preclinica_ibfk_1` FOREIGN KEY (`ID_Cita`) REFERENCES `tbl_citas` (`ID_Cita`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_pregunta_usuario`
--
ALTER TABLE `tbl_pregunta_usuario`
  ADD CONSTRAINT `tbl_pregunta_usuario_ibfk_2` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbl_usuario` (`ID_Usuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pregunta_usuario_ibfk_3` FOREIGN KEY (`ID_Pregunta`) REFERENCES `tbl_preguntas` (`ID_Pregunta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD CONSTRAINT `tbl_usuario_ibfk_3` FOREIGN KEY (`ID_Estado`) REFERENCES `tbl_estado_usuario` (`ID_Estado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_usuario_ibfk_5` FOREIGN KEY (`ID_Rol`) REFERENCES `tbl_roles` (`ID_Rol`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_usuario_ibfk_6` FOREIGN KEY (`ID_Empleado`) REFERENCES `tbl_empleado` (`ID_Empleado`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
