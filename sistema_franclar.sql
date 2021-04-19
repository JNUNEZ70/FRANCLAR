-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-04-2021 a las 10:41:48
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

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
  `ID_Bitacora_evento` int(11) NOT NULL,
  `Fecha_Evento` timestamp NOT NULL DEFAULT current_timestamp(),
  `ID_Usuario` bigint(3) NOT NULL,
  `ID_Objeto` bigint(3) NOT NULL,
  `Accion` varchar(30) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_bitacora_evento`
--

INSERT INTO `tbl_bitacora_evento` (`ID_Bitacora_evento`, `Fecha_Evento`, `ID_Usuario`, `ID_Objeto`, `Accion`, `Descripcion`) VALUES
(1, '2021-04-18 02:35:45', 1, 2, 'Acceso', 'INGRESO A PANTALLA USUARIOS'),
(2, '2021-04-18 02:43:55', 1, 2, 'Acceso', 'INGRESO A PANTALLA USUARIOS'),
(3, '2021-04-18 02:44:12', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(4, '2021-04-18 02:44:26', 1, 7, 'Acceso', 'INGRESO A PANTALLA CITAS'),
(5, '2021-04-18 02:44:55', 1, 2, 'Acceso', 'INGRESO A PANTALLA USUARIOS'),
(6, '2021-04-18 02:45:13', 1, 7, 'Acceso', 'INGRESO A PANTALLA CITAS'),
(7, '2021-04-18 02:45:41', 1, 2, 'Acceso', 'INGRESO A PANTALLA USUARIOS'),
(8, '2021-04-18 02:50:57', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(9, '2021-04-18 02:51:00', 1, 2, 'Acceso', 'INGRESO A PANTALLA USUARIOS'),
(10, '2021-04-18 02:55:20', 1, 2, 'Insert', 'ADMIN CREO UN NUEVO USUARIO'),
(11, '2021-04-18 02:58:51', 1, 25, 'Acceso', 'CERRO SESIÓN'),
(12, '2021-04-18 03:05:31', 24, 25, '	Acceso', 'INICIÓ SESIÓN'),
(13, '2021-04-18 03:06:01', 24, 25, 'Acceso', 'CERRO SESIÓN'),
(14, '2021-04-18 03:51:15', 1, 25, '	Acceso', 'INICIÓ SESIÓN'),
(15, '2021-04-18 03:51:26', 1, 5, 'Acceso', 'INGRESO A PANTALLA CONSULTA'),
(16, '2021-04-18 03:51:32', 1, 7, 'Acceso', 'INGRESO A PANTALLA CITAS'),
(17, '2021-04-18 03:53:58', 1, 7, 'Insert', 'SE INGRESÓ UNA NUEVA CITA'),
(18, '2021-04-18 03:54:04', 1, 6, 'Acceso', 'INGRESO A PANTALLA PRECLINICA'),
(19, '2021-04-18 03:54:18', 1, 6, 'Insert', 'SE REALIZO PRECLINICA'),
(20, '2021-04-18 03:54:25', 1, 5, 'Acceso', 'INGRESO A PANTALLA CONSULTA'),
(21, '2021-04-18 04:18:22', 1, 25, 'Acceso', 'CERRO SESIÓN'),
(22, '2021-04-18 16:22:25', 1, 25, '	Acceso', 'INICIÓ SESIÓN'),
(23, '2021-04-18 16:22:55', 1, 7, 'Acceso', 'INGRESO A PANTALLA CITAS'),
(24, '2021-04-18 16:41:46', 1, 7, 'Acceso', 'INGRESO A PANTALLA CITAS'),
(25, '2021-04-18 16:41:50', 1, 5, 'Acceso', 'INGRESO A PANTALLA CONSULTA'),
(26, '2021-04-18 16:41:54', 1, 8, 'Acceso', 'INGRESO A PANTALLA CAJA'),
(27, '2021-04-18 16:46:32', 1, 25, 'Acceso', 'CERRO SESIÓN'),
(29, '2021-04-18 17:03:15', 24, 25, '	Acceso', 'INICIÓ SESIÓN'),
(30, '2021-04-18 17:07:39', 24, 25, 'Acceso', 'CERRO SESIÓN'),
(32, '2021-04-18 21:11:02', 1, 25, '	Acceso', 'INICIÓ SESIÓN'),
(33, '2021-04-18 21:11:31', 1, 4, 'Acceso', 'INGRESO A PANTALLA PACIENTES'),
(34, '2021-04-18 21:12:08', 1, 4, 'Acceso', 'INGRESO A PANTALLA PACIENTES'),
(35, '2021-04-18 21:12:36', 1, 4, 'Acceso', 'INGRESO A PANTALLA PACIENTES'),
(36, '2021-04-18 21:13:54', 1, 4, 'Acceso', 'INGRESO A PANTALLA PACIENTES'),
(37, '2021-04-18 21:21:41', 1, 4, 'Insert', 'SE INGRESÓ UN NUEVO PACIENTE'),
(38, '2021-04-18 21:22:25', 1, 7, 'Acceso', 'INGRESO A PANTALLA CITAS'),
(39, '2021-04-18 21:24:32', 1, 10, 'Acceso', 'INGRESO A PANTALLA CARGOS'),
(40, '2021-04-18 21:26:28', 1, 9, 'Acceso', 'INGRESO A PANTALLA ESPECIALIDADES'),
(41, '2021-04-18 21:31:44', 1, 12, 'Acceso', 'INGRESO A PANTALLA ESTADO_CIVIL'),
(42, '2021-04-18 21:32:16', 1, 16, 'Acceso', 'INGRESO A PANTALLA GÉNERO'),
(43, '2021-04-18 21:32:40', 1, 13, 'Acceso', 'INGRESO A PANTALLA RELIGIÓN'),
(44, '2021-04-18 21:33:01', 1, 15, 'Acceso', 'INGRESO A PANTALLA TIPO_SANGRE'),
(45, '2021-04-18 21:34:00', 1, 18, 'Acceso', 'INGRESO A PANTALLA PARENTESCO'),
(46, '2021-04-18 21:34:28', 1, 23, 'Acceso', 'INGRESO A PANTALLA COBROS'),
(47, '2021-04-18 21:39:32', 1, 19, 'Acceso', 'INGRESO A PANTALLA ROLES'),
(48, '2021-04-18 21:40:08', 1, 3, 'Acceso', 'INGRESO A PANTALLA PARAMETROS DE SEGURIDAD'),
(49, '2021-04-18 21:40:44', 1, 20, 'Acceso', 'INGRESO A PANTALLA PARAMETROS DE SISTEMA'),
(50, '2021-04-18 21:41:26', 1, 17, 'Acceso', 'INGRESO A PANTALLA PREGUNTAS SECRETAS'),
(51, '2021-04-18 21:41:58', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(52, '2021-04-18 21:43:05', 1, 2, 'Acceso', 'INGRESO A PANTALLA USUARIOS'),
(53, '2021-04-18 21:44:53', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(54, '2021-04-18 22:00:16', 1, 4, 'Acceso', 'INGRESO A PANTALLA PACIENTES'),
(55, '2021-04-18 22:00:20', 1, 7, 'Acceso', 'INGRESO A PANTALLA CITAS'),
(56, '2021-04-18 22:00:24', 1, 25, 'Acceso', 'CERRO SESIÓN'),
(57, '2021-04-18 22:01:13', 1, 25, '	Acceso', 'INICIÓ SESIÓN'),
(58, '2021-04-18 22:01:34', 1, 4, 'Acceso', 'INGRESO A PANTALLA PACIENTES'),
(59, '2021-04-18 22:01:46', 1, 19, 'Acceso', 'INGRESO A PANTALLA ROLES'),
(60, '2021-04-18 22:01:51', 1, 21, 'Acceso', 'INGRESO A PANTALLA RESAPALDO DB'),
(61, '2021-04-18 22:01:54', 1, 22, 'Acceso', 'INGRESO A PANTALLA RESTAURAR DB'),
(62, '2021-04-18 22:02:12', 1, 21, 'Acceso', 'INGRESO A PANTALLA RESAPALDO DB'),
(63, '2021-04-18 22:02:32', 1, 22, 'Acceso', 'INGRESO A PANTALLA RESTAURAR DB'),
(64, '2021-04-18 22:04:05', 1, 25, 'Acceso', 'CERRO SESIÓN'),
(65, '2021-04-19 02:53:18', 1, 25, '	Acceso', 'INICIÓ SESIÓN'),
(66, '2021-04-19 02:53:24', 1, 4, 'Acceso', 'INGRESO A PANTALLA PACIENTES'),
(67, '2021-04-19 03:02:28', 1, 18, 'Acceso', 'INGRESO A PANTALLA PARENTESCO'),
(68, '2021-04-19 03:04:02', 1, 19, 'Acceso', 'INGRESO A PANTALLA ROLES'),
(69, '2021-04-19 06:51:15', 1, 25, '	Acceso', 'INICIÓ SESIÓN'),
(70, '2021-04-19 06:56:04', 1, 10, 'Acceso', 'INGRESO A PANTALLA CARGOS'),
(71, '2021-04-19 06:57:37', 1, 19, 'Acceso', 'INGRESO A PANTALLA ROLES'),
(72, '2021-04-19 06:59:06', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(73, '2021-04-19 07:00:10', 1, 2, 'Acceso', 'INGRESO A PANTALLA USUARIOS'),
(74, '2021-04-19 07:01:15', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(75, '2021-04-19 07:01:57', 1, 3, 'Acceso', 'INGRESO A PANTALLA PARAMETROS DE SEGURIDAD'),
(76, '2021-04-19 07:02:01', 1, 20, 'Acceso', 'INGRESO A PANTALLA PARAMETROS DE SISTEMA'),
(77, '2021-04-19 07:02:14', 1, 17, 'Acceso', 'INGRESO A PANTALLA PREGUNTAS SECRETAS'),
(78, '2021-04-19 07:02:22', 1, 7, 'Acceso', 'INGRESO A PANTALLA CITAS'),
(79, '2021-04-19 07:02:35', 1, 6, 'Acceso', 'INGRESO A PANTALLA PRECLINICA'),
(80, '2021-04-19 07:02:38', 1, 6, 'Acceso', 'INGRESO A PANTALLA PRECLINICA'),
(81, '2021-04-19 07:02:40', 1, 5, 'Acceso', 'INGRESO A PANTALLA CONSULTA'),
(82, '2021-04-19 07:02:43', 1, 24, 'Acceso', 'INGRESO A PANTALLA EXPEDIENTE'),
(83, '2021-04-19 07:03:08', 1, 8, 'Acceso', 'INGRESO A PANTALLA CAJA'),
(84, '2021-04-19 07:03:13', 1, 24, 'Acceso', 'INGRESO A PANTALLA EXPEDIENTE'),
(85, '2021-04-19 07:03:36', 1, 7, 'Acceso', 'INGRESO A PANTALLA CITAS'),
(86, '2021-04-19 07:05:16', 1, 7, 'Insert', 'SE INGRESÓ UNA NUEVA CITA'),
(87, '2021-04-19 07:05:41', 1, 6, 'Acceso', 'INGRESO A PANTALLA PRECLINICA'),
(88, '2021-04-19 07:05:59', 1, 6, 'Insert', 'SE REALIZO PRECLINICA'),
(89, '2021-04-19 07:06:03', 1, 5, 'Acceso', 'INGRESO A PANTALLA CONSULTA'),
(90, '2021-04-19 07:07:45', 1, 8, 'Acceso', 'INGRESO A PANTALLA CAJA'),
(91, '2021-04-19 07:08:53', 1, 24, 'Acceso', 'INGRESO A PANTALLA EXPEDIENTE'),
(92, '2021-04-19 07:08:58', 1, 4, 'Acceso', 'INGRESO A PANTALLA PACIENTES'),
(93, '2021-04-19 07:10:01', 1, 7, 'Acceso', 'INGRESO A PANTALLA CITAS'),
(94, '2021-04-19 07:10:11', 1, 2, 'Acceso', 'INGRESO A PANTALLA USUARIOS'),
(95, '2021-04-19 07:10:22', 1, 2, 'Update', 'SE ACTIVÓ UN USUARIO'),
(96, '2021-04-19 07:10:47', 1, 2, 'Update', 'SE ACTUALIZÓ UN USUARIO'),
(97, '2021-04-19 07:11:15', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(98, '2021-04-19 07:18:56', 1, 1, 'Insert', 'SE INGRESÓ UN NUEVO EMPLEADO'),
(99, '2021-04-19 07:20:01', 1, 2, 'Acceso', 'INGRESO A PANTALLA USUARIOS'),
(100, '2021-04-19 07:22:34', 1, 2, 'Insert', 'ADMIN CREÓ UN NUEVO USUARIO'),
(101, '2021-04-19 07:25:18', 1, 25, 'Acceso', 'CERRO SESIÓN'),
(102, '2021-04-19 07:25:18', 1, 25, 'Acceso', 'CERRO SESIÓN'),
(103, '2021-04-19 07:25:18', 1, 25, 'Acceso', 'CERRO SESIÓN'),
(104, '2021-04-19 07:26:53', 25, 25, '	Acceso', 'INICIÓ SESIÓN'),
(105, '2021-04-19 07:28:26', 25, 7, 'Insert', 'SE INGRESÓ UNA NUEVA CITA'),
(106, '2021-04-19 07:31:07', 25, 25, 'Acceso', 'CERRO SESIÓN'),
(107, '2021-04-19 07:31:23', 1, 25, '	Acceso', 'INICIÓ SESIÓN'),
(108, '2021-04-19 07:31:32', 1, 7, 'Acceso', 'INGRESO A PANTALLA CITAS'),
(109, '2021-04-19 07:31:37', 1, 6, 'Acceso', 'INGRESO A PANTALLA PRECLINICA'),
(110, '2021-04-19 07:31:49', 1, 6, 'Insert', 'SE REALIZO PRECLINICA'),
(111, '2021-04-19 07:31:53', 1, 25, 'Acceso', 'CERRO SESIÓN'),
(112, '2021-04-19 07:32:07', 25, 25, '	Acceso', 'INICIÓ SESIÓN'),
(113, '2021-04-19 07:45:31', 25, 25, 'Acceso', 'CERRO SESIÓN'),
(114, '2021-04-19 07:45:39', 1, 25, '	Acceso', 'INICIÓ SESIÓN'),
(115, '2021-04-19 07:45:48', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(116, '2021-04-19 07:45:50', 1, 2, 'Acceso', 'INGRESO A PANTALLA USUARIOS'),
(117, '2021-04-19 08:02:34', 1, 25, '	Acceso', 'INICIÓ SESIÓN'),
(118, '2021-04-19 08:02:42', 1, 4, 'Acceso', 'INGRESO A PANTALLA PACIENTES'),
(119, '2021-04-19 08:02:47', 1, 7, 'Acceso', 'INGRESO A PANTALLA CITAS'),
(120, '2021-04-19 08:02:52', 1, 1, 'Acceso', 'INGRESO A PANTALLA PERSONAL'),
(121, '2021-04-19 08:03:04', 1, 2, 'Acceso', 'INGRESO A PANTALLA USUARIOS'),
(122, '2021-04-19 08:03:20', 1, 2, 'Acceso', 'INGRESO A PANTALLA USUARIOS'),
(123, '2021-04-19 08:03:35', 1, 2, 'Update', 'SE ACTUALIZÓ UN USUARIO'),
(124, '2021-04-19 08:04:36', 1, 2, 'Insert', 'ADMIN CREÓ UN NUEVO USUARIO'),
(125, '2021-04-19 08:05:03', 1, 25, 'Acceso', 'CERRO SESIÓN'),
(126, '2021-04-19 08:06:20', 26, 25, '	Acceso', 'INICIÓ SESIÓN'),
(127, '2021-04-19 08:06:48', 26, 25, 'Acceso', 'CERRO SESIÓN'),
(129, '2021-04-19 08:29:32', 26, 25, '	Acceso', 'INICIÓ SESIÓN'),
(130, '2021-04-19 08:29:45', 26, 25, 'Acceso', 'CERRO SESIÓN'),
(132, '2021-04-19 08:32:28', 26, 25, '	Acceso', 'INICIÓ SESIÓN'),
(133, '2021-04-19 08:33:42', 26, 25, 'Acceso', 'CERRO SESIÓN'),
(134, '2021-04-19 08:38:35', 27, 25, '	Acceso', 'INICIÓ SESIÓN'),
(135, '2021-04-19 08:39:27', 27, 25, 'Acceso', 'CERRO SESIÓN'),
(137, '2021-04-19 08:40:33', 27, 25, '	Acceso', 'INICIÓ SESIÓN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bitacora_evento_log`
--

CREATE TABLE `tbl_bitacora_evento_log` (
  `ID_Bitacora_evento` int(11) NOT NULL,
  `Fecha_Evento` datetime NOT NULL,
  `ID_Usuario` bigint(3) NOT NULL,
  `ID_Objeto` bigint(3) NOT NULL,
  `Accion` varchar(30) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cargo`
--

CREATE TABLE `tbl_cargo` (
  `ID_Cargo` int(3) NOT NULL,
  `Nomb_Cargo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_cargo`
--

INSERT INTO `tbl_cargo` (`ID_Cargo`, `Nomb_Cargo`) VALUES
(1, 'DOCTOR(A'),
(2, 'ENFERMERO(A)'),
(3, 'CAJERO(A)'),
(4, 'LIMPIEZA'),
(5, 'SEGURIDAD'),
(6, 'AUTO_REGISTRO'),
(13, 'P');

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
  `Usuario_Crea` bigint(3) DEFAULT NULL,
  `Fec_Crea` date DEFAULT NULL,
  `Usuario_Modif` bigint(3) DEFAULT NULL,
  `Fec_Modif` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_citas`
--

INSERT INTO `tbl_citas` (`ID_Cita`, `ID_Paciente`, `ID_Usuario`, `ID_Empleado`, `ID_Especialidad`, `ID_Estado`, `Fec_Creacion`, `Fec_Atencion`, `Hora_Atencion`, `Precio`, `Usuario_Crea`, `Fec_Crea`, `Usuario_Modif`, `Fec_Modif`) VALUES
(1, 1, 1, 3, 1, 4, '2021-04-15 01:35:03', '2021-04-15', '08:00:00', 200, NULL, NULL, NULL, NULL),
(2, 1, 1, 11, 3, 2, '2021-04-15 02:09:59', '2021-04-15', '07:00:00', 400, NULL, NULL, NULL, NULL),
(3, 1, 1, 3, 1, 4, '2021-04-15 02:38:15', '2021-04-15', '09:00:00', 200, NULL, NULL, NULL, NULL),
(4, 1, 1, 3, 1, 4, '2021-04-15 02:43:13', '2021-04-16', '10:00:00', 200, NULL, NULL, NULL, NULL),
(5, 1, 1, 3, 1, 4, '2021-04-15 02:54:49', '2021-04-15', '09:00:00', 200, NULL, NULL, NULL, NULL),
(6, 1, 1, 3, 1, 4, '2021-04-15 08:47:20', '2021-07-22', '09:00:00', 200, NULL, NULL, NULL, NULL),
(7, 1, 1, 3, 1, 4, '2021-04-16 07:15:25', '2021-04-17', '09:00:00', 200, NULL, NULL, NULL, NULL),
(8, 1, 1, 3, 1, 4, '2021-04-16 07:53:06', '2021-04-17', '07:00:00', 200, NULL, NULL, NULL, NULL),
(9, 1, 1, 3, 1, 4, '2021-04-18 03:53:58', '2021-04-18', '09:00:00', 200, NULL, NULL, NULL, NULL),
(10, 2, 1, 3, 1, 4, '2021-04-19 07:05:16', '2021-04-20', '21:10:00', 200, NULL, NULL, NULL, NULL),
(11, 2, 25, 24, 1, 2, '2021-04-19 07:28:26', '2021-04-20', '08:28:00', 200, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cobros_adicionales`
--

CREATE TABLE `tbl_cobros_adicionales` (
  `ID_Cobro_adicional` int(11) NOT NULL,
  `Descripcion_Cobro` varchar(100) NOT NULL,
  `Precio_Cobro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_cobros_adicionales`
--

INSERT INTO `tbl_cobros_adicionales` (`ID_Cobro_adicional`, `Descripcion_Cobro`, `Precio_Cobro`) VALUES
(1, 'AAAA', 400),
(2, 'PRUEBA', 500),
(3, 'EEEEEEEEE', 1000),
(4, 'ASSDFSDFSDFSd', 1000),
(5, 'UUUUUUUUUUU', 800),
(6, 'PPPPPPPPPPPP', 100),
(7, 'SAFSDFGBSDFG', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_consultas`
--

CREATE TABLE `tbl_consultas` (
  `ID_Consulta` bigint(3) NOT NULL,
  `ID_Cita` bigint(3) NOT NULL,
  `Diagnostico` varchar(200) NOT NULL,
  `Anamnesis` varchar(500) NOT NULL,
  `Exam_Fisico` varchar(500) NOT NULL,
  `Tratamiento` varchar(200) NOT NULL,
  `Usuario_Crea` bigint(3) DEFAULT NULL,
  `Fec_Crea` date DEFAULT NULL,
  `Usuario_Modif` bigint(3) DEFAULT NULL,
  `Fec_Modif` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_consultas`
--

INSERT INTO `tbl_consultas` (`ID_Consulta`, `ID_Cita`, `Diagnostico`, `Anamnesis`, `Exam_Fisico`, `Tratamiento`, `Usuario_Crea`, `Fec_Crea`, `Usuario_Modif`, `Fec_Modif`) VALUES
(1, 1, 'PRUEBA PRUEBA PRUEBA PRUEBA', 'PRUEBA PRUEBA PRUEBA PRUEBA', 'PRUEBA PRUEBA PRUEBA PRUEBA', 'PRUEBA PRUEBA PRUEBA PRUEBA', NULL, NULL, NULL, NULL),
(2, 1, 'PRUEBA PRUEBA PRUEBA PRUEBA', 'PRUEBA PRUEBA PRUEBA PRUEBA', 'PRUEBA PRUEBA PRUEBA PRUEBA', 'PRUEBA PRUEBA PRUEBA PRUEBA', NULL, NULL, NULL, NULL),
(3, 3, 'KK', 'KK', 'KK', 'Kk', NULL, NULL, NULL, NULL),
(4, 4, 'PPPPPPPPPPPPPPP', 'PPPPPPPPPPPPPPPP', 'PPPPPPPPPPPP', 'PPPPPPPPPPPPPPP', NULL, NULL, NULL, NULL),
(5, 5, 'PPPPPPPPPPPPPPPPP', 'PPPPPPPPPPPPPPPPP', 'PPPPPPPPPPPPPPPPP', 'PPPPPPPPPPPPPPPP', NULL, NULL, NULL, NULL),
(6, 6, 'PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUE', 'PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBA', 'PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBA', 'PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUE', NULL, NULL, NULL, NULL),
(7, 7, 'PRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEB', 'PRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA', 'PRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA', 'PRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEB', NULL, NULL, NULL, NULL),
(8, 8, 'PRUEBA PRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBA', 'PRUEBA PRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBA', 'PRUEBA PRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBA', 'PRUEBA PRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBAPRUEBA', NULL, NULL, NULL, NULL),
(9, 9, 'PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBA PR', 'PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAP', 'PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAP', 'PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBA PR', NULL, NULL, NULL, NULL),
(10, 10, 'PRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRU', 'PRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBA', 'PRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBA', 'PRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRU', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalle_factura`
--

CREATE TABLE `tbl_detalle_factura` (
  `ID_Detalle` int(11) NOT NULL,
  `ID_Factura` int(11) NOT NULL,
  `Descripcion` varchar(150) NOT NULL,
  `Cobro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_detalle_factura`
--

INSERT INTO `tbl_detalle_factura` (`ID_Detalle`, `ID_Factura`, `Descripcion`, `Cobro`) VALUES
(1, 1, 'MEDICINA GENERAL', 200),
(2, 1, 'MEDICINA GENERAL', 200),
(3, 3, 'MEDICINA GENERAL', 200),
(4, 4, 'MEDICINA GENERAL', 200),
(5, 5, 'MEDICINA GENERAL', 200),
(6, 5, 'EEEEEEEEE', 1000),
(7, 1, 'AAAA', 400),
(8, 1, 'EEEEEEEEE', 1000),
(9, 3, 'PRUEBA', 500),
(10, 3, 'PRUEBA', 500),
(11, 6, 'MEDICINA GENERAL', 200),
(12, 7, 'MEDICINA GENERAL', 200),
(13, 6, 'AAAA', 400),
(14, 6, 'ASSDFSDFSDFSd', 1000),
(15, 6, 'UUUUUUUUUUU', 800),
(16, 6, 'PPPPPPPPPPPP', 100),
(17, 8, 'MEDICINA GENERAL', 200),
(18, 9, 'MEDICINA GENERAL', 200),
(19, 9, 'UUUUUUUUUUU', 800),
(20, 9, 'ASSDFSDFSDFSd', 1000),
(21, 9, 'SAFSDFGBSDFG', 100),
(22, 10, 'MEDICINA GENERAL', 200),
(23, 10, 'SAFSDFGBSDFG', 100),
(24, 10, 'AAAA', 400);

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
  `Usuario_Crea` bigint(3) DEFAULT NULL,
  `Fec_Crea` date DEFAULT NULL,
  `Usuario_Modif` bigint(3) DEFAULT NULL,
  `Fec_Modif` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_empleado`
--

INSERT INTO `tbl_empleado` (`ID_Empleado`, `Nom_Empleado`, `ID_Sexo`, `ID_Est_Civil`, `ID_Cargo`, `ID_Especialidad`, `Cedula`, `Fec_Nacimiento`, `Dir_Empleado`, `Tel_Empleado`, `Cel_Empleado`, `Salario`, `Usuario_Crea`, `Fec_Crea`, `Usuario_Modif`, `Fec_Modif`) VALUES
(1, 'ADMIN', 1, 1, 1, 1, '1111111111111', '0000-00-00', 'ADMIN', 0, 0, 0, NULL, NULL, NULL, NULL),
(3, 'CARLOS FABRICIO NUÑEZ RAMIRES', 1, 3, 2, 1, '', '0000-00-00', 'COL. VENEZUELA SECTOR B BLOQUE 8 CASA 17 ', 22278000, 33876298, 30000, NULL, NULL, NULL, NULL),
(11, 'JOSUE ALLAN GONZALES RAMIRES', 1, 2, 3, 3, '0801199714588', '1987-10-08', 'WINFEIUFGEFVDFVDF', 22222222, 99999999, 20000, NULL, NULL, NULL, NULL),
(12, 'WILDER EDUARDO RAMIRES ', 1, 1, 5, 1, '0801199714078', '1982-09-05', 'SJDNVSDHOFIVBDVRFGBRGBRFGBGF', 22222222, 88888888, 20000, NULL, NULL, NULL, NULL),
(17, 'JEAN CARLOS NUEZ', 1, 1, 6, 8, '0801199714079', '1980-10-14', 'ASDSDJNSDSDSDSDD', 22222222, 99999999, 0, NULL, NULL, NULL, NULL),
(18, 'JOSUE ROLANDO RAMIRES GONZALES', 1, 1, 1, 2, '0801199714079', '1997-10-14', 'AASSDSSSDDSDSSSDSDSD', 22222222, 99999999, 20000, NULL, NULL, NULL, NULL),
(20, 'JOSUE CACERES ACOSTA', 1, 1, 6, 8, '0801115556666', '1980-10-04', 'SDSDCSDCSDCSD', 22222222, 99999999, 0, NULL, NULL, NULL, NULL),
(21, 'JEAN CARLOS RODRIGUEZ', 1, 1, 6, 8, '0801199714089', '1980-11-10', 'SDFDFDGBDFGBDFGB', 22222222, 99999999, 0, NULL, NULL, NULL, NULL),
(22, 'JUAN JOSE RODRIGUEZ ALMENDAREZ', 1, 1, 4, 9, '0801199614079', '1988-06-14', 'OSDIUBDINDFDFDF FDDFFDFDFDF', 22222222, 99999999, 10000, NULL, NULL, NULL, NULL),
(24, 'PRUEBA PRUEBA PRUEBA PRUEBA', 1, 1, 1, 1, '2222222222222', '1997-07-06', 'PRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA PRUEBAPRUEBA PRUEBA PRUEBA', 22222222, 99999999, 20000, NULL, NULL, NULL, NULL),
(25, 'PRUEBA PRUEBA PRUEBA PRUEBA', 1, 1, 6, 8, '3333333333333', '2011-12-18', 'PRUEBA PRUEBA PRUEBA PRUEBA', 22222222, 99999999, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_especialidad`
--

CREATE TABLE `tbl_especialidad` (
  `ID_Especialidad` int(3) NOT NULL,
  `Descripcion_Espec` varchar(30) NOT NULL,
  `Precio` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_especialidad`
--

INSERT INTO `tbl_especialidad` (`ID_Especialidad`, `Descripcion_Espec`, `Precio`) VALUES
(1, 'MEDICINA GENERAL', 200),
(2, 'ORTOPEDIA', 800),
(3, 'FISIOTERAPIA', 0),
(4, 'NUTRICIÓN', 0),
(5, 'ODONTOLOGÍA', 0),
(6, 'PSICOLOGÍA', 0),
(7, 'PODOLOGÍA', 0),
(8, 'Auto_Registro', 0),
(9, 'Sin Especialidad', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado_cita`
--

CREATE TABLE `tbl_estado_cita` (
  `ID_Estado` int(3) NOT NULL,
  `Descripcion_Est_cita` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_estado_cita`
--

INSERT INTO `tbl_estado_cita` (`ID_Estado`, `Descripcion_Est_cita`) VALUES
(1, 'Pendiente'),
(2, 'Preclínica'),
(3, 'Pendiente de Pago'),
(4, 'Pagada'),
(5, 'Vencida');

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
(1, 'SOLTERO(A)'),
(2, 'CASADO(A)'),
(3, 'UNIÓN LIBRE'),
(4, 'VIUDO(A)'),
(5, 'DIVORCIADO(A)');

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
  `ID_Cita` bigint(3) NOT NULL,
  `Fec_atencion` timestamp NOT NULL DEFAULT current_timestamp(),
  `Usuario_Crea` bigint(3) DEFAULT NULL,
  `Fec_Crea` date DEFAULT NULL,
  `Usuario_Modif` bigint(3) DEFAULT NULL,
  `Fec_Modif` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_expediente`
--

INSERT INTO `tbl_expediente` (`ID_expediente`, `ID_paciente`, `ID_Cita`, `Fec_atencion`, `Usuario_Crea`, `Fec_Crea`, `Usuario_Modif`, `Fec_Modif`) VALUES
(1, 1, 1, '2021-04-15 02:27:08', NULL, NULL, NULL, NULL),
(2, 1, 1, '2021-04-15 02:30:46', NULL, NULL, NULL, NULL),
(3, 1, 3, '2021-04-15 02:39:25', NULL, NULL, NULL, NULL),
(4, 1, 4, '2021-04-15 02:44:21', NULL, NULL, NULL, NULL),
(5, 1, 5, '2021-04-15 02:56:21', NULL, NULL, NULL, NULL),
(6, 1, 6, '2021-04-15 22:37:18', NULL, NULL, NULL, NULL),
(7, 1, 7, '2021-04-16 07:26:35', NULL, NULL, NULL, NULL),
(8, 1, 8, '2021-04-16 07:54:43', NULL, NULL, NULL, NULL),
(9, 1, 9, '2021-04-18 03:56:17', NULL, NULL, NULL, NULL),
(10, 2, 10, '2021-04-19 07:07:18', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_facturas`
--

CREATE TABLE `tbl_facturas` (
  `ID_factura` int(11) NOT NULL,
  `ID_cita` bigint(3) NOT NULL,
  `ID_Paciente` int(3) NOT NULL,
  `ID_Especialidad` int(3) NOT NULL,
  `Pago` int(11) NOT NULL,
  `Fec_emision` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_facturas`
--

INSERT INTO `tbl_facturas` (`ID_factura`, `ID_cita`, `ID_Paciente`, `ID_Especialidad`, `Pago`, `Fec_emision`) VALUES
(1, 1, 1, 1, 200, '2021-04-15 02:27:08'),
(2, 1, 1, 1, 200, '2021-04-15 02:30:46'),
(3, 3, 1, 1, 200, '2021-04-15 02:39:25'),
(4, 4, 1, 1, 200, '2021-04-15 02:44:21'),
(5, 5, 1, 1, 200, '2021-04-15 02:56:22'),
(6, 6, 1, 1, 200, '2021-04-15 22:37:18'),
(7, 7, 1, 1, 200, '2021-04-16 07:26:35'),
(8, 8, 1, 1, 200, '2021-04-16 07:54:43'),
(9, 9, 1, 1, 200, '2021-04-18 03:56:18'),
(10, 10, 2, 1, 200, '2021-04-19 07:07:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_fotos_consultas`
--

CREATE TABLE `tbl_fotos_consultas` (
  `ID_foto` int(11) NOT NULL,
  `ID_Cita` bigint(3) NOT NULL,
  `URL_Foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_fotos_consultas`
--

INSERT INTO `tbl_fotos_consultas` (`ID_foto`, `ID_Cita`, `URL_Foto`) VALUES
(1, 1, 'Fotos_Citas/Fotografía.jpeg'),
(2, 1, 'Fotos_Citas/Fotografía.jpeg'),
(3, 4, 'Fotos_Citas/Fotografía.jpeg'),
(4, 5, 'Fotos_Citas/Fotografía.jpeg'),
(5, 6, 'Fotos_Citas/Núñez_Jean_T1.jpg'),
(6, 6, 'Fotos_Citas/1575799923730.jpg'),
(7, 6, 'Fotos_Citas/Captura de pantalla (329).png'),
(8, 7, 'Fotos_Citas/1575799923730.jpg'),
(9, 7, 'Fotos_Citas/Captura de pantalla (329).png'),
(10, 7, 'Fotos_Citas/Núñez_Jean_T1.jpg'),
(11, 8, 'Fotos_Citas/Núñez_Jean_T1.jpg'),
(12, 9, 'Fotos_Citas/1575799923730.jpg'),
(13, 10, 'Fotos_Citas/1575799923730.jpg'),
(14, 10, 'Fotos_Citas/Captura de pantalla (329).png'),
(15, 10, 'Fotos_Citas/Núñez_Jean_T1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_historico_contrasenas`
--

CREATE TABLE `tbl_historico_contrasenas` (
  `ID_Historial` int(11) NOT NULL,
  `ID_Usuario` bigint(3) NOT NULL,
  `Contrasena_Anterior` varchar(250) NOT NULL,
  `Fecha_Cambio` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_historico_contrasenas`
--

INSERT INTO `tbl_historico_contrasenas` (`ID_Historial`, `ID_Usuario`, `Contrasena_Anterior`, `Fecha_Cambio`) VALUES
(1, 24, '$2y$10$y0OcO7milANgDXu1rbZV4uCnXGuNXntrw7t77JvT02L9D7nCNVCjy', '2021-04-17 21:05:07'),
(2, 24, '$2y$10$aXtKZw1z0PWlOqiiIfHU2ObiVlCNRfiNqcragfxWXtemrRgubdNkq', '2021-04-18 11:02:58'),
(3, 24, '$2y$10$ZPEi/HeTOuO0Q9cDSuAEi.7m/gJ8.vvyBjpvmm.VrcikM/kk8Gtz2', '2021-04-18 11:09:00'),
(4, 25, '$2y$10$jgxBxKqDBIsw4GtKP1Cv3.1vRA4OCQ6pYlveGMMKmNVT5u0e3OOSS', '2021-04-19 01:26:35'),
(5, 26, '$2y$10$3CKh2Nj5T7JlzlNQGtbRvup.Hj.m9zvTQWcVJmkbi0wzAFhUHs9oq', '2021-04-19 02:06:09'),
(6, 26, '$2y$10$QvQiBBghYowae1Fzlsof4OOsTryJ7qZ77IaMW.jmMqEs0onNl1SpK', '2021-04-19 02:29:12'),
(7, 26, '$2y$10$ULNO8p0DPmyEpQ6NwRVHSuMxFIUaB0hYtY2WONImeVKzLb11m.Mgq', '2021-04-19 02:32:03'),
(8, 27, '$2y$10$J9tQp6KRzMiDZ6/8AVqRWOtpFYesgkzdQb1gDKGVW4bMENUlkFijS', '2021-04-19 02:38:20'),
(9, 27, '$2y$10$dlvIN5QGTnfWHFPx/pJPZul/H34Kg8m3bi4NiBu9/oN9WyW9qfz8y', '2021-04-19 02:40:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_objetos`
--

CREATE TABLE `tbl_objetos` (
  `ID_Objeto` bigint(3) NOT NULL,
  `Objeto` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_objetos`
--

INSERT INTO `tbl_objetos` (`ID_Objeto`, `Objeto`) VALUES
(1, 'vista_personal'),
(2, 'vista_usuarios'),
(3, 'vista_parametros_Segurida'),
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
(16, 'vista_sexo'),
(17, 'vista_preguntas'),
(18, 'vista_parentesco'),
(19, 'vista_Roles'),
(20, 'vista_parametros_Sistema'),
(21, 'vista_Respaldo_DB'),
(22, 'Vista_Restauración_DB'),
(23, 'vista_Cobros_Adicionales'),
(24, 'vista_Expediente'),
(25, 'Vista_Sisión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pacientes`
--

CREATE TABLE `tbl_pacientes` (
  `ID_Paciente` int(3) NOT NULL,
  `ID_tipo_documento` int(11) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `ID_Sexo` int(1) NOT NULL,
  `ID_Est_Civil` int(3) NOT NULL,
  `ID_Tipo_Sangre` int(3) NOT NULL,
  `ID_Religion` int(3) NOT NULL,
  `Nom_Paciente` varchar(255) NOT NULL,
  `Fec_Nacimiento` date NOT NULL,
  `Edad` int(3) NOT NULL,
  `Dir_Paciente` varchar(255) NOT NULL,
  `Tel_Paciente` int(8) NOT NULL,
  `Cel_Paciente` int(8) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contacto_Emergencia` varchar(40) NOT NULL,
  `ID_Parentesco` int(3) NOT NULL,
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

INSERT INTO `tbl_pacientes` (`ID_Paciente`, `ID_tipo_documento`, `cedula`, `ID_Sexo`, `ID_Est_Civil`, `ID_Tipo_Sangre`, `ID_Religion`, `Nom_Paciente`, `Fec_Nacimiento`, `Edad`, `Dir_Paciente`, `Tel_Paciente`, `Cel_Paciente`, `Email`, `Contacto_Emergencia`, `ID_Parentesco`, `Tel_Emergencia`, `Cel_Emergencia`, `Antecedentes_Personales`, `Antecedentes_Hospitalarios`, `Antecedentes_Alergicos`, `Antecedentes_Familiares`, `Habitos`, `Usuario_crea`, `Fec_crea`, `Usuario_modif`, `Fec_modif`) VALUES
(1, 1, '0801199714079', 1, 1, 5, 2, 'PRUEBA', '1997-07-06', 23, 'COL CSDSDFSD SAECTORT NSNDFSDF SDFGSNDFGSDFG DSFGDF D GDFGSDF DSFGSDFSDF DF GDFGDSF', 22222222, 99999999, 'nuez.jeancarlos@gmail.com', 'SADFSAD SDFGDF SDFSADF SDFSDFSD', 1, 22222222, 99999999, 'SDFASDFSADFSADF SDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADF', 'SDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADF ', 'SDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADF ', 'SDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADF', 'SDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADFSDFASDFSADFSADF', NULL, NULL, NULL, NULL),
(2, 1, '1212212122121', 1, 2, 3, 1, 'ASASAS', '1997-02-18', 24, 'FKLSMDFKLJASDKLFJ', 21231231, 12312312, 'nuez.jcarlos@gmail.com', 'ASDASD', 9, 12312312, 12312312, 'ASDASDASDADSASD', 'ASDASDASD', 'ASDASDASDASD', 'ASDASD', 'ADSADS', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_parametros`
--

CREATE TABLE `tbl_parametros` (
  `id_parametro` int(3) NOT NULL,
  `parametro` varchar(25) NOT NULL,
  `valor` varchar(3) NOT NULL,
  `id_usuario` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_parametros`
--

INSERT INTO `tbl_parametros` (`id_parametro`, `parametro`, `valor`, `id_usuario`, `Fec_crea`, `Fec_modif`) VALUES
(1, 'INTENTOS_INGRESO', '3', 1, '2020-10-04', '2020-10-04'),
(2, 'PREGUNTAS_RECUPERACIÓN', '3', NULL, NULL, NULL);

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
(1, 'USUARIODB', 'franclar', '0000-00-00', '0000-00-00'),
(2, 'SERVIDORDB', 'localhost', '0000-00-00', '0000-00-00'),
(3, 'NOMBREDB', 'sistema_franclar', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_parentesco`
--

CREATE TABLE `tbl_parentesco` (
  `ID_Parentesco` int(3) NOT NULL,
  `Parentesco` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_parentesco`
--

INSERT INTO `tbl_parentesco` (`ID_Parentesco`, `Parentesco`) VALUES
(1, 'MADRE'),
(2, 'PADRE'),
(3, 'HERMANO(A)'),
(4, 'TÍO(A)'),
(5, 'PRIMO(A)'),
(6, 'ABUELO(A)'),
(7, 'SUEGRO(A)'),
(8, 'YERNO'),
(9, 'NUERA'),
(10, 'CUÑADO(A)'),
(11, 'Otros'),
(14, 'HIJO(A)');

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

--
-- Volcado de datos para la tabla `tbl_permisos`
--

INSERT INTO `tbl_permisos` (`id_permiso`, `id_rol`, `id_objeto`, `permiso_insertar`, `permiso_eliminar`, `permiso_actualizar`, `permiso_consultar`) VALUES
(1, 1, 1, '1', '1', '1', '1'),
(2, 1, 2, '1', '1', '1', '1'),
(3, 1, 3, '1', '1', '1', '1'),
(4, 1, 4, '1', '1', '1', '1'),
(5, 1, 5, '1', '1', '1', '1'),
(6, 1, 6, '1', '1', '1', '1'),
(7, 1, 7, '1', '1', '1', '1'),
(8, 1, 8, '1', '1', '1', '1'),
(9, 1, 9, '1', '1', '1', '1'),
(10, 1, 10, '1', '1', '1', '1'),
(11, 1, 11, '1', '1', '1', '1'),
(12, 1, 12, '1', '1', '1', '1'),
(13, 1, 13, '1', '1', '1', '1'),
(14, 1, 14, '1', '1', '1', '1'),
(15, 1, 15, '1', '1', '1', '1'),
(16, 1, 16, '1', '1', '1', '1'),
(17, 1, 17, '1', '1', '1', '1'),
(18, 1, 18, '1', '1', '1', '1'),
(19, 1, 19, '1', '1', '1', '1'),
(20, 1, 20, '1', '1', '1', '1'),
(21, 1, 21, '1', '1', '1', '1'),
(22, 1, 22, '1', '1', '1', '1'),
(23, 1, 23, '1', '1', '1', '1'),
(24, 1, 24, '1', '1', '1', '1'),
(25, 1, 25, '1', '1', '1', '1'),
(26, 2, 1, '0', '0', '0', '0'),
(27, 2, 2, '0', '0', '0', '0'),
(28, 2, 3, '0', '0', '0', '0'),
(29, 2, 4, '1', '1', '1', '1'),
(30, 2, 5, '1', '1', '1', '1'),
(31, 2, 6, '0', '0', '0', '0'),
(32, 2, 7, '1', '1', '1', '1'),
(33, 2, 8, '0', '0', '0', '0'),
(34, 2, 9, '0', '0', '0', '0'),
(35, 2, 10, '0', '0', '0', '0'),
(36, 2, 11, '0', '0', '0', '0'),
(37, 2, 12, '0', '0', '0', '0'),
(38, 2, 13, '0', '0', '0', '0'),
(39, 2, 14, '0', '0', '0', '0'),
(40, 2, 15, '0', '0', '0', '0'),
(41, 2, 16, '0', '0', '0', '0'),
(42, 2, 17, '0', '0', '0', '0'),
(43, 2, 18, '0', '0', '0', '0'),
(44, 2, 19, '0', '0', '0', '0'),
(45, 2, 20, '0', '0', '0', '0'),
(46, 2, 21, '0', '0', '0', '0'),
(47, 2, 22, '0', '0', '0', '0'),
(48, 2, 23, '0', '0', '0', '0'),
(49, 2, 24, '0', '0', '0', '0'),
(50, 2, 25, '0', '0', '0', '0'),
(51, 3, 1, '0', '0', '0', '0'),
(52, 3, 2, '0', '0', '0', '0'),
(53, 3, 3, '0', '0', '0', '0'),
(54, 3, 4, '1', '1', '1', '1'),
(55, 3, 5, '0', '0', '0', '0'),
(56, 3, 6, '1', '1', '1', '1'),
(57, 3, 7, '1', '1', '1', '1'),
(58, 3, 8, '0', '0', '0', '0'),
(59, 3, 9, '0', '0', '0', '0'),
(60, 3, 10, '0', '0', '0', '0'),
(61, 3, 11, '0', '0', '0', '0'),
(62, 3, 12, '0', '0', '0', '0'),
(63, 3, 13, '0', '0', '0', '0'),
(64, 3, 14, '0', '0', '0', '0'),
(65, 3, 15, '0', '0', '0', '0'),
(66, 3, 16, '0', '0', '0', '0'),
(67, 3, 17, '0', '0', '0', '0'),
(68, 3, 18, '0', '0', '0', '0'),
(69, 3, 19, '0', '0', '0', '0'),
(70, 3, 20, '0', '0', '0', '0'),
(71, 3, 21, '0', '0', '0', '0'),
(72, 3, 22, '0', '0', '0', '0'),
(73, 3, 23, '0', '0', '0', '0'),
(74, 3, 24, '0', '0', '0', '0'),
(75, 3, 25, '0', '0', '0', '0'),
(76, 4, 1, '0', '0', '0', '0'),
(77, 4, 2, '0', '0', '0', '0'),
(78, 4, 3, '0', '0', '0', '0'),
(79, 4, 4, '0', '0', '0', '0'),
(80, 4, 5, '0', '0', '0', '0'),
(81, 4, 6, '0', '0', '0', '0'),
(82, 4, 7, '0', '0', '0', '0'),
(83, 4, 8, '1', '1', '1', '1'),
(84, 4, 9, '0', '0', '0', '0'),
(85, 4, 10, '0', '0', '0', '0'),
(86, 4, 11, '0', '0', '0', '0'),
(87, 4, 12, '0', '0', '0', '0'),
(88, 4, 13, '0', '0', '0', '0'),
(89, 4, 14, '0', '0', '0', '0'),
(90, 4, 15, '0', '0', '0', '0'),
(91, 4, 16, '0', '0', '0', '0'),
(92, 4, 17, '0', '0', '0', '0'),
(93, 4, 18, '0', '0', '0', '0'),
(94, 4, 19, '0', '0', '0', '0'),
(95, 4, 20, '0', '0', '0', '0'),
(96, 4, 21, '0', '0', '0', '0'),
(97, 4, 22, '0', '0', '0', '0'),
(98, 4, 23, '1', '1', '1', '1'),
(99, 4, 24, '0', '0', '0', '0'),
(100, 4, 25, '0', '0', '0', '0'),
(101, 5, 1, '0', '0', '0', '0'),
(102, 5, 2, '0', '0', '0', '0'),
(103, 5, 3, '0', '0', '0', '0'),
(104, 5, 4, '0', '0', '0', '0'),
(105, 5, 5, '0', '0', '0', '0'),
(106, 5, 6, '0', '0', '0', '0'),
(107, 5, 7, '0', '0', '0', '0'),
(108, 5, 8, '0', '0', '0', '0'),
(109, 5, 9, '0', '0', '0', '0'),
(110, 5, 10, '0', '0', '0', '0'),
(111, 5, 11, '0', '0', '0', '0'),
(112, 5, 12, '0', '0', '0', '0'),
(113, 5, 13, '0', '0', '0', '0'),
(114, 5, 14, '0', '0', '0', '0'),
(115, 5, 15, '0', '0', '0', '0'),
(116, 5, 16, '0', '0', '0', '0'),
(117, 5, 17, '0', '0', '0', '0'),
(118, 5, 18, '0', '0', '0', '0'),
(119, 5, 19, '0', '0', '0', '0'),
(120, 5, 20, '0', '0', '0', '0'),
(121, 5, 21, '0', '0', '0', '0'),
(122, 5, 22, '0', '0', '0', '0'),
(123, 5, 23, '0', '0', '0', '0'),
(124, 5, 24, '0', '0', '0', '0'),
(125, 5, 25, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_preclinica`
--

CREATE TABLE `tbl_preclinica` (
  `ID_Preclinica` bigint(3) NOT NULL,
  `ID_Cita` bigint(3) NOT NULL,
  `PA` varchar(10) NOT NULL,
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

--
-- Volcado de datos para la tabla `tbl_preclinica`
--

INSERT INTO `tbl_preclinica` (`ID_Preclinica`, `ID_Cita`, `PA`, `FC`, `FR`, `Temp`, `PAM`, `Glucometria`, `Peso`, `Talla`, `Usuario_crea`, `Fec_crea`, `Usuario_modif`, `Fec_modif`) VALUES
(1, 1, '44', '66', 66, 66, '66', 66, 66, 66, NULL, NULL, NULL, NULL),
(2, 2, '88', '88', 888, 88, '88', 88, 88, 88, NULL, NULL, NULL, NULL),
(3, 3, '99', '99', 99, 99, '999', 99, 99, 99, NULL, NULL, NULL, NULL),
(4, 4, '88', '88', 88, 88, '88', 88, 88, 888, NULL, NULL, NULL, NULL),
(5, 5, '88', '88', 88, 88, '88', 88, 88, 88, NULL, NULL, NULL, NULL),
(6, 2, '445', '4545', 4545, 454, '545', 45454, 545, 4545, NULL, NULL, NULL, NULL),
(7, 6, '55', '5', 55, 5, '55', 5, 55, 55, NULL, NULL, NULL, NULL),
(8, 7, '44', '44', 44, 44, '44', 44, 44, 44, NULL, NULL, NULL, NULL),
(9, 8, '88', '88', 88, 88, '88', 88, 88, 88, NULL, NULL, NULL, NULL),
(10, 9, '55', '55', 55, 55, '55', 55, 55, 55, NULL, NULL, NULL, NULL),
(11, 10, '55', '55', 55, 55, '55', 55, 55, 55, NULL, NULL, NULL, NULL),
(12, 11, '55', '55', 55, 55, '55', 55, 55, 55, NULL, NULL, NULL, NULL);

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
(1, '¿CUÁL ES EL NOMBRE DE SU MAMÁ? ', NULL, NULL, NULL, NULL),
(2, '¿CUÁL ES EL NOMBRE DE SU PRIMER MASCOTA?', NULL, NULL, NULL, NULL),
(3, '¿CUÁL ES SU COLOR FAVORITO?', NULL, NULL, NULL, NULL),
(4, '¿CUÁL ES SU COMIDA FAVORITA?', NULL, NULL, NULL, NULL),
(5, '¿CUÁL ES EL NOMBRE DE SU PADRE?', NULL, NULL, NULL, NULL),
(6, '¿CÓMO SE LLAMABA EL COLEGIO AL QUE ASISTISTE?', NULL, NULL, NULL, NULL),
(7, '¿CÓMO SE LLAMA SU TÍO FAVORITO?', NULL, NULL, NULL, NULL),
(8, '¿CÓMO SE LLAMA SU PRIMERA ESCUELA?', NULL, NULL, NULL, NULL),
(9, '¿CÓMO SE LLAMA SU TÍA FAVORITA?', NULL, NULL, NULL, NULL),
(10, '¿CUÁL ES EL NOMBRE DE SU PRIMER PAREJA?', NULL, NULL, NULL, NULL),
(11, '¿CUÁL FUE EL PRIMER LIBRO QUE LEÍSTE?', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pregunta_usuario`
--

CREATE TABLE `tbl_pregunta_usuario` (
  `id_pregunta_usuario` bigint(3) NOT NULL,
  `ID_Pregunta` bigint(3) NOT NULL,
  `ID_Usuario` bigint(3) NOT NULL,
  `Respuesta` varchar(256) NOT NULL,
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
(53, 3, 11, 'XXX', NULL, NULL, NULL, NULL),
(55, 1, 15, 'XXX', NULL, NULL, NULL, NULL),
(56, 2, 15, 'XXX', NULL, NULL, NULL, NULL),
(57, 3, 15, 'XXX', NULL, NULL, NULL, NULL),
(58, 1, 19, 'XXX', NULL, NULL, NULL, NULL),
(59, 2, 19, 'XXX', NULL, NULL, NULL, NULL),
(60, 3, 19, 'XXX', NULL, NULL, NULL, NULL),
(64, 1, 9, 'AAA', NULL, NULL, NULL, NULL),
(65, 2, 9, 'AAA', NULL, NULL, NULL, NULL),
(66, 3, 9, 'AAA', NULL, NULL, NULL, NULL),
(67, 1, 22, 'AAA', NULL, NULL, NULL, NULL),
(68, 2, 22, 'AAA', NULL, NULL, NULL, NULL),
(69, 3, 22, 'AAA', NULL, NULL, NULL, NULL),
(70, 1, 23, '$2y$10$WUikb921I5k.GlFDqwE4R.n.JkEvWDqJbPPL3lRL/hYNRbHO44HXq', NULL, NULL, NULL, NULL),
(71, 2, 23, '$2y$10$718icW9KxqBihWOpXN46ie/VOuUHQyFKprwmHYluCNTQNUFP0djq.', NULL, NULL, NULL, NULL),
(72, 3, 23, '$2y$10$mYv0fJTHAiBNFKgFG.UsaupW/QSQVvjTH87MJ7/D6JVYjd7ylMN3C', NULL, NULL, NULL, NULL),
(73, 1, 24, '$2y$10$WesgCKUCg7M7/IfjCvExueYjNOLjX97bXkoF9iRJaKfltz89TVco2', NULL, NULL, NULL, NULL),
(74, 2, 24, '$2y$10$UCLrATRIhQlNdSQmHLzvNOGXZBOleHpds6.gV/V7kIcpZv4fxAcY2', NULL, NULL, NULL, NULL),
(75, 3, 24, '$2y$10$DNxNzaxJ8ubPk4g2DZosOuVcYY/EfXa.0Rgw4N/UIgGVdaL6M95MS', NULL, NULL, NULL, NULL),
(76, 1, 25, '$2y$10$mKwf0V8NIg3ISHpAmwth3OmDhdQ/61tHYuQDue7lEEZxYOqE.6gZy', NULL, NULL, NULL, NULL),
(77, 2, 25, '$2y$10$uFCjiTGlDNFrncTNtzacP.gBj6AmwxsmI6sj/KgoL3QVcK7RFM9Ha', NULL, NULL, NULL, NULL),
(78, 3, 25, '$2y$10$xrm0gYmhnG.buUKqUQhaSOBcixL8TLRabeFD3w6MrDHj4HA910DSW', NULL, NULL, NULL, NULL),
(79, 1, 26, '$2y$10$JZgvT4tJrk0wW8kputCd4ONdxYhSvnBEOw8zOvHtweb0iREWyDLC.', NULL, NULL, NULL, NULL),
(80, 2, 26, '$2y$10$006iEbUI6KCBkhHJwexx1Oi7KQho9GhzdKa6XHOxnXokJQF3gjA9y', NULL, NULL, NULL, NULL),
(81, 3, 26, '$2y$10$79StMHouVdRS8.ko3jCq.O87CETldtTJlhCcClx0dtJo/teLj8jc6', NULL, NULL, NULL, NULL),
(82, 1, 27, '$2y$10$mdggy4y8MikVOSPtgi16suPZZrtrFXxvYpBQpdXjXKIiul01cbpRm', NULL, NULL, NULL, NULL),
(83, 2, 27, '$2y$10$gURh1K5.D6.tPyxPfrp3a.K6pb1ay7TZmH000eB0OVJhQ5K97jpeW', NULL, NULL, NULL, NULL),
(84, 3, 27, '$2y$10$uA/TG3V//Mqr7azbky9PpOL./KsOMNKjeLrAhITzX8JILmyXGumoq', NULL, NULL, NULL, NULL);

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
(1, 'CATÓLICO(A)'),
(2, 'EVANGÉLICO(A)'),
(3, 'OTROS');

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
(1, 'ADMIN'),
(2, 'DOCTOR'),
(3, 'ENFERMERO'),
(4, 'CAJERO'),
(5, 'Auto_Registro');

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
(1, 'MASCULINO'),
(2, 'FEMENINO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_documento`
--

CREATE TABLE `tbl_tipo_documento` (
  `ID_tipo_documento` int(11) NOT NULL,
  `Descripcion_tipo_documento` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_tipo_documento`
--

INSERT INTO `tbl_tipo_documento` (`ID_tipo_documento`, `Descripcion_tipo_documento`) VALUES
(1, 'Identidad'),
(2, 'Pasaporte');

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
(1, 'A POSITIVO'),
(2, 'A NEGATIVO'),
(3, 'B POSITIVO'),
(4, 'B NEGATIVO'),
(5, 'O POSITIVO'),
(6, 'O NEGATIVO'),
(7, 'AB POSITIVO'),
(8, 'AB NEGATIVO');

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
  `Contraseña` varchar(256) NOT NULL,
  `ID_Rol` bigint(3) NOT NULL,
  `Ult_Conexion` date DEFAULT NULL,
  `Primer_Ingreso` int(1) NOT NULL,
  `token` varchar(50) DEFAULT NULL,
  `token_password` varchar(100) DEFAULT NULL,
  `password_request` int(11) DEFAULT NULL,
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

INSERT INTO `tbl_usuario` (`ID_Usuario`, `ID_Empleado`, `ID_Estado`, `Nom_Usuario`, `email`, `Contraseña`, `ID_Rol`, `Ult_Conexion`, `Primer_Ingreso`, `token`, `token_password`, `password_request`, `Fec_venc`, `Usuario_crea`, `Fec_crea`, `Usuario_modif`, `Fec_modif`, `preguntas_contestadas`) VALUES
(1, 1, 1, 'ADMIN', 'soportefranclar@gmail.com', '$2y$10$sUnr9Y7ta9mpgTCcvK0JZO2Pt1FU3P2NEx1.oIdME4YfaW4IPavrO', 1, '2020-10-04', 0, NULL, NULL, NULL, '2020-10-04', NULL, NULL, NULL, NULL, 0),
(9, 11, 1, 'JGONZALES', 'jsdiksndsdsd@gmail.com', '$2y$10$kxdWWQU9GQ/JnvePvxtSkeNigZGafKjNqg49JwiBActjkG4t9qiOi', 4, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(11, 12, 1, 'WRAMIRES', 'jidndf@gmail.com', 'Minuto#2020', 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(15, 17, 1, 'JEANNUNEZ', 'jean.nunez@gmail.com', 'Minuto#2020', 3, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(16, 18, 1, 'JOSUERAMIRES', 'jenaas.sdsd@gmail.com', 'Minuto#2020', 4, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 20, 3, 'JOSUERS', 'nuez.jeancarlos@gmail.com', 'Minuto#2020', 5, NULL, 0, NULL, 'e787135ff6b14a8c28d15870e29001b6', 1, NULL, NULL, NULL, NULL, NULL, 3),
(19, 21, 1, 'JEANRODRIGUEZ', 'nuez.jca@gmail.com', 'Minuto#2020', 4, NULL, 0, NULL, 'cc8dec1a4e6ee94b3beea5582352d257', 1, NULL, NULL, NULL, NULL, NULL, 3),
(20, 21, 1, 'PRUEBAPRUEBA', 'nusdsd.sdsdf@gmail.com', '$2y$10$eP3BRZssMEkd0agRpM3fOe3/btUC8IvHJgx.8L7F5otLpXKgtMU8.', 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 20, 1, 'PRUEBAPRPRPRPR', 'sdsdfsdfsd@gmail.com', '$2y$10$R61PA1ILKu8k3kqOvEc30eqCWKmxdQhWth8bFfuixV0cVUxWJBt0m', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 17, 1, 'PRUEBAOKOKOK', 'nrlos@gmail.com', '$2y$10$RuqsqWZ8DMjOEPhBLduPp.fyDN.QkrI24RNwBmgEw8nyJWfTgLdZm', 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(23, 21, 3, 'PRUEBAUSUSUSUSU', 'nuerlos@gmail.com', '$2y$10$7xAKQtDKjD.2CQsEZm8kg.21TE.Jyjf4okk1n9O6C6oG9/hB3csOe', 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(24, 3, 1, 'PRUEBAOKOKOKOKOK', 'nrDDFGDSFos@gmail.com', '$2y$10$dWxLYkIrCJl.DfTqJkmmqelBq8Czwu3VnU69N2Ff5FqD2PTZI4ElS', 2, NULL, 0, NULL, '84561ce0bd69180119bff02394afe66d', 1, NULL, NULL, NULL, NULL, NULL, 3),
(25, 24, 1, 'PRUEBAPRUEBAOKOK', 'ndfgsdgfd@gmail.com', '$2y$10$lZUKekdcpCrrkVtqt1/04ejtznHLkNm/quLxjcpReiUQeTJxSimve', 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(26, 24, 1, 'PRUEBAOKUSUARIO', 'asdfsdfsadfasdf@gmail.com', '$2y$10$x2anPmsjyKldpCl1t7yi5O3qtD41rtngMoX.buH316pkITHGb1GUe', 2, NULL, 0, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, 3),
(27, 25, 1, 'PRUEBUSUARIOOK', 'nuez.jcarlos@gmail.com', '$2y$10$JoBFyXVUI5j4y8TPICIIp.qvRBxqBCvfRRCDMI54mGcCIeBeSB3Ta', 5, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);

--
-- Disparadores `tbl_usuario`
--
DELIMITER $$
CREATE TRIGGER `tbl_usuarios_BU` BEFORE UPDATE ON `tbl_usuario` FOR EACH ROW BEGIN
    	IF (NEW.contraseña!=OLD.contraseña) THEN
    
        
                INSERT INTO 		tbl_historico_contrasenas(tbl_historico_contrasenas.ID_Usuario,tbl_historico_contrasenas.contrasena_anterior)
        	VALUES(OLD.ID_Usuario,OLD.contraseña);
    		
        END IF;
    
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
  ADD PRIMARY KEY (`ID_Bitacora_evento`),
  ADD KEY `id_usuario` (`ID_Usuario`),
  ADD KEY `id_objeto` (`ID_Objeto`);

--
-- Indices de la tabla `tbl_bitacora_evento_log`
--
ALTER TABLE `tbl_bitacora_evento_log`
  ADD PRIMARY KEY (`ID_Bitacora_evento`);

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
-- Indices de la tabla `tbl_cobros_adicionales`
--
ALTER TABLE `tbl_cobros_adicionales`
  ADD PRIMARY KEY (`ID_Cobro_adicional`);

--
-- Indices de la tabla `tbl_consultas`
--
ALTER TABLE `tbl_consultas`
  ADD PRIMARY KEY (`ID_Consulta`),
  ADD KEY `ID_Atencion` (`ID_Cita`),
  ADD KEY `ID_Cita` (`ID_Cita`);

--
-- Indices de la tabla `tbl_detalle_factura`
--
ALTER TABLE `tbl_detalle_factura`
  ADD PRIMARY KEY (`ID_Detalle`),
  ADD KEY `ID_factura` (`ID_Factura`);

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
  ADD PRIMARY KEY (`ID_Especialidad`);

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
  ADD KEY `ID_consulta` (`ID_Cita`);

--
-- Indices de la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  ADD PRIMARY KEY (`ID_factura`),
  ADD KEY `ID_cita` (`ID_cita`),
  ADD KEY `ID_Paciente` (`ID_Paciente`),
  ADD KEY `ID_Especialidad` (`ID_Especialidad`);

--
-- Indices de la tabla `tbl_fotos_consultas`
--
ALTER TABLE `tbl_fotos_consultas`
  ADD PRIMARY KEY (`ID_foto`),
  ADD KEY `ID_Cita` (`ID_Cita`);

--
-- Indices de la tabla `tbl_historico_contrasenas`
--
ALTER TABLE `tbl_historico_contrasenas`
  ADD PRIMARY KEY (`ID_Historial`),
  ADD KEY `ID_Usuario` (`ID_Usuario`);

--
-- Indices de la tabla `tbl_objetos`
--
ALTER TABLE `tbl_objetos`
  ADD PRIMARY KEY (`ID_Objeto`);

--
-- Indices de la tabla `tbl_pacientes`
--
ALTER TABLE `tbl_pacientes`
  ADD PRIMARY KEY (`ID_Paciente`),
  ADD KEY `ID_Sexo` (`ID_Sexo`),
  ADD KEY `ID_Est_Civil` (`ID_Est_Civil`),
  ADD KEY `ID_Tipo_Sangre` (`ID_Tipo_Sangre`),
  ADD KEY `ID_Religion` (`ID_Religion`),
  ADD KEY `ID_Parentesco` (`ID_Parentesco`),
  ADD KEY `ID_tipo_documento` (`ID_tipo_documento`);

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
-- Indices de la tabla `tbl_parentesco`
--
ALTER TABLE `tbl_parentesco`
  ADD PRIMARY KEY (`ID_Parentesco`);

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
-- Indices de la tabla `tbl_sexo`
--
ALTER TABLE `tbl_sexo`
  ADD PRIMARY KEY (`ID_Sexo`);

--
-- Indices de la tabla `tbl_tipo_documento`
--
ALTER TABLE `tbl_tipo_documento`
  ADD PRIMARY KEY (`ID_tipo_documento`);

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
  MODIFY `ID_Bitacora_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de la tabla `tbl_bitacora_evento_log`
--
ALTER TABLE `tbl_bitacora_evento_log`
  MODIFY `ID_Bitacora_evento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_cargo`
--
ALTER TABLE `tbl_cargo`
  MODIFY `ID_Cargo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tbl_citas`
--
ALTER TABLE `tbl_citas`
  MODIFY `ID_Cita` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tbl_cobros_adicionales`
--
ALTER TABLE `tbl_cobros_adicionales`
  MODIFY `ID_Cobro_adicional` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tbl_consultas`
--
ALTER TABLE `tbl_consultas`
  MODIFY `ID_Consulta` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_detalle_factura`
--
ALTER TABLE `tbl_detalle_factura`
  MODIFY `ID_Detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
  MODIFY `ID_Empleado` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `tbl_especialidad`
--
ALTER TABLE `tbl_especialidad`
  MODIFY `ID_Especialidad` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tbl_estado_civil`
--
ALTER TABLE `tbl_estado_civil`
  MODIFY `ID_Est_Civil` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tbl_expediente`
--
ALTER TABLE `tbl_expediente`
  MODIFY `ID_expediente` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  MODIFY `ID_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_fotos_consultas`
--
ALTER TABLE `tbl_fotos_consultas`
  MODIFY `ID_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tbl_historico_contrasenas`
--
ALTER TABLE `tbl_historico_contrasenas`
  MODIFY `ID_Historial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tbl_pacientes`
--
ALTER TABLE `tbl_pacientes`
  MODIFY `ID_Paciente` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT de la tabla `tbl_parentesco`
--
ALTER TABLE `tbl_parentesco`
  MODIFY `ID_Parentesco` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tbl_permisos`
--
ALTER TABLE `tbl_permisos`
  MODIFY `id_permiso` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de la tabla `tbl_preclinica`
--
ALTER TABLE `tbl_preclinica`
  MODIFY `ID_Preclinica` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tbl_preguntas`
--
ALTER TABLE `tbl_preguntas`
  MODIFY `ID_Pregunta` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tbl_pregunta_usuario`
--
ALTER TABLE `tbl_pregunta_usuario`
  MODIFY `id_pregunta_usuario` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `tbl_religion`
--
ALTER TABLE `tbl_religion`
  MODIFY `ID_Religion` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `ID_Rol` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tbl_sexo`
--
ALTER TABLE `tbl_sexo`
  MODIFY `ID_Sexo` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_tipo_documento`
--
ALTER TABLE `tbl_tipo_documento`
  MODIFY `ID_tipo_documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_tipo_sangre`
--
ALTER TABLE `tbl_tipo_sangre`
  MODIFY `ID_Tipo_Sangre` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `ID_Usuario` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_bitacora_evento`
--
ALTER TABLE `tbl_bitacora_evento`
  ADD CONSTRAINT `tbl_bitacora_evento_ibfk_1` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbl_usuario` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_bitacora_evento_ibfk_2` FOREIGN KEY (`ID_Objeto`) REFERENCES `tbl_objetos` (`ID_Objeto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_citas`
--
ALTER TABLE `tbl_citas`
  ADD CONSTRAINT `tbl_citas_ibfk_4` FOREIGN KEY (`ID_Estado`) REFERENCES `tbl_estado_cita` (`ID_Estado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_citas_ibfk_5` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbl_usuario` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_citas_ibfk_7` FOREIGN KEY (`ID_Paciente`) REFERENCES `tbl_pacientes` (`ID_Paciente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_citas_ibfk_8` FOREIGN KEY (`ID_Especialidad`) REFERENCES `tbl_especialidad` (`ID_Especialidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_citas_ibfk_9` FOREIGN KEY (`ID_Empleado`) REFERENCES `tbl_empleado` (`ID_Empleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_consultas`
--
ALTER TABLE `tbl_consultas`
  ADD CONSTRAINT `tbl_consultas_ibfk_5` FOREIGN KEY (`ID_Cita`) REFERENCES `tbl_citas` (`ID_Cita`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_detalle_factura`
--
ALTER TABLE `tbl_detalle_factura`
  ADD CONSTRAINT `tbl_detalle_factura_ibfk_1` FOREIGN KEY (`ID_Factura`) REFERENCES `tbl_facturas` (`ID_factura`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
  ADD CONSTRAINT `tbl_empleado_ibfk_6` FOREIGN KEY (`ID_Cargo`) REFERENCES `tbl_cargo` (`ID_Cargo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_empleado_ibfk_7` FOREIGN KEY (`ID_Especialidad`) REFERENCES `tbl_especialidad` (`ID_Especialidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_empleado_ibfk_8` FOREIGN KEY (`ID_Est_Civil`) REFERENCES `tbl_estado_civil` (`ID_Est_Civil`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_empleado_ibfk_9` FOREIGN KEY (`ID_Sexo`) REFERENCES `tbl_sexo` (`ID_Sexo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_expediente`
--
ALTER TABLE `tbl_expediente`
  ADD CONSTRAINT `tbl_expediente_ibfk_2` FOREIGN KEY (`ID_paciente`) REFERENCES `tbl_pacientes` (`ID_Paciente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_expediente_ibfk_3` FOREIGN KEY (`ID_Cita`) REFERENCES `tbl_citas` (`ID_Cita`);

--
-- Filtros para la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  ADD CONSTRAINT `tbl_facturas_ibfk_1` FOREIGN KEY (`ID_cita`) REFERENCES `tbl_citas` (`ID_Cita`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_facturas_ibfk_2` FOREIGN KEY (`ID_Paciente`) REFERENCES `tbl_pacientes` (`ID_Paciente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_facturas_ibfk_3` FOREIGN KEY (`ID_Especialidad`) REFERENCES `tbl_especialidad` (`ID_Especialidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_fotos_consultas`
--
ALTER TABLE `tbl_fotos_consultas`
  ADD CONSTRAINT `tbl_fotos_consultas_ibfk_1` FOREIGN KEY (`ID_Cita`) REFERENCES `tbl_citas` (`ID_Cita`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_historico_contrasenas`
--
ALTER TABLE `tbl_historico_contrasenas`
  ADD CONSTRAINT `tbl_historico_contrasenas_ibfk_1` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbl_usuario` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_pacientes`
--
ALTER TABLE `tbl_pacientes`
  ADD CONSTRAINT `tbl_pacientes_ibfk_10` FOREIGN KEY (`ID_Tipo_Sangre`) REFERENCES `tbl_tipo_sangre` (`ID_Tipo_Sangre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pacientes_ibfk_11` FOREIGN KEY (`ID_Parentesco`) REFERENCES `tbl_parentesco` (`ID_Parentesco`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pacientes_ibfk_12` FOREIGN KEY (`ID_tipo_documento`) REFERENCES `tbl_tipo_documento` (`ID_tipo_documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pacientes_ibfk_7` FOREIGN KEY (`ID_Est_Civil`) REFERENCES `tbl_estado_civil` (`ID_Est_Civil`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pacientes_ibfk_8` FOREIGN KEY (`ID_Sexo`) REFERENCES `tbl_sexo` (`ID_Sexo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pacientes_ibfk_9` FOREIGN KEY (`ID_Religion`) REFERENCES `tbl_religion` (`ID_Religion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_permisos`
--
ALTER TABLE `tbl_permisos`
  ADD CONSTRAINT `tbl_permisos_ibfk_1` FOREIGN KEY (`id_objeto`) REFERENCES `tbl_objetos` (`ID_Objeto`) ON DELETE CASCADE ON UPDATE CASCADE,
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
  ADD CONSTRAINT `tbl_usuario_ibfk_6` FOREIGN KEY (`ID_Empleado`) REFERENCES `tbl_empleado` (`ID_Empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_usuario_ibfk_7` FOREIGN KEY (`ID_Rol`) REFERENCES `tbl_roles` (`ID_Rol`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
