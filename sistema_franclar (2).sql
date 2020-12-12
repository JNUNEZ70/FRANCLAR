-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2020 a las 05:05:35
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
(1, '2020-12-12 03:19:02', 1, 7, 'Acceso', 'INGRESO A PANTALLA CITAS'),
(2, '2020-12-12 03:20:08', 1, 7, 'Insert', 'SE INGRESÓ UNA NUEVA CITA'),
(3, '2020-12-12 03:21:05', 1, 7, 'Insert', 'SE INGRESÓ UNA NUEVA CITA'),
(4, '2020-12-12 03:21:29', 1, 6, 'Acceso', 'INGRESO A PANTALLA PRECLINICA'),
(5, '2020-12-12 03:21:43', 1, 6, 'Insert', 'SE REALIZO PRECLINICA'),
(6, '2020-12-12 03:22:09', 1, 24, 'Acceso', 'INGRESO A PANTALLA EXPEDIENTE'),
(7, '2020-12-12 03:22:32', 1, 24, 'Acceso', 'INGRESO A PANTALLA EXPEDIENTE');

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
(4, 'LIMPIEZA'),
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cobros_adicionales`
--

CREATE TABLE `tbl_cobros_adicionales` (
  `ID_cobro_adicional` int(11) NOT NULL,
  `Descripcion_cobro` varchar(100) NOT NULL,
  `Precio_cobro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_cobros_adicionales`
--

INSERT INTO `tbl_cobros_adicionales` (`ID_cobro_adicional`, `Descripcion_cobro`, `Precio_cobro`) VALUES
(1, 'PRUEBA', 150);

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
  `id_detalle` int(11) NOT NULL,
  `ID_Factura` int(11) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `cobro` int(11) NOT NULL
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
(3, 'Carlos Fabricio Nuñez Ramires', 1, 3, 2, 1, '', '0000-00-00', 'Col. Venezuela Sector B Bloque 8 casa 17', 22278000, 33876298, 30000, NULL, NULL, NULL, NULL),
(11, 'JOSUE ALLAN GONZALES RAMIRES', 1, 2, 3, 3, '0801199714588', '1987-10-08', 'WINFEIUFGEFVDFVDF', 22222222, 99999999, 20000, NULL, NULL, NULL, NULL),
(12, 'WILDER EDUARDO RAMIRES ', 1, 1, 5, 7, '0801199714078', '1982-09-05', 'SJDNVSDHOFIVBDVRFGBRGBRFGBGF', 22222222, 88888888, 20000, NULL, NULL, NULL, NULL),
(17, 'JEAN CARLOS NUEZ', 1, 1, 6, 8, '0801199714079', '1980-10-14', 'ASDSDJNSDSDSDSDD', 22222222, 99999999, 0, NULL, NULL, NULL, NULL),
(18, 'JOSUE ROLANDO RAMIRES GONZALES', 1, 1, 1, 2, '0801199714079', '1997-10-14', 'AASSDSSSDDSDSSSDSDSD', 22222222, 99999999, 20000, NULL, NULL, NULL, NULL),
(20, 'JOSUE CACERES ACOSTA', 1, 1, 6, 8, '0801115556666', '1980-10-04', 'SDSDCSDCSDCSD', 22222222, 99999999, 0, NULL, NULL, NULL, NULL),
(21, 'JEAN CARLOS RODRIGUEZ', 1, 1, 6, 8, '0801199714089', '1980-11-10', 'SDFDFDGBDFGBDFGB', 22222222, 99999999, 0, NULL, NULL, NULL, NULL),
(22, 'JUAN JOSE RODRIGUEZ ALMENDAREZ', 1, 1, 4, 9, '0801199614079', '1988-06-14', 'OSDIUBDINDFDFDF FDDFFDFDFDF', 22222222, 99999999, 10000, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_especialidad`
--

CREATE TABLE `tbl_especialidad` (
  `ID_especialidad` int(3) NOT NULL,
  `Descripcion_espec` varchar(30) NOT NULL,
  `Precio` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_especialidad`
--

INSERT INTO `tbl_especialidad` (`ID_especialidad`, `Descripcion_espec`, `Precio`) VALUES
(1, 'Medicina General', 200),
(2, 'Ortopedia', 800),
(3, 'Fisioterapia', 0),
(4, 'Nutrición', 0),
(5, 'Odontología', 0),
(6, 'Psicología', 0),
(7, 'Podología', 0),
(8, 'Auto_Registro', 0),
(9, 'Sin Especialidad', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado_cita`
--

CREATE TABLE `tbl_estado_cita` (
  `ID_Estado` int(3) NOT NULL,
  `Descripcion_est_cita` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_estado_cita`
--

INSERT INTO `tbl_estado_cita` (`ID_Estado`, `Descripcion_est_cita`) VALUES
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
  `ID_Cita` bigint(3) NOT NULL,
  `Fec_atencion` timestamp NOT NULL DEFAULT current_timestamp(),
  `imagen` mediumblob DEFAULT NULL,
  `tipo_imagen` varchar(50) NOT NULL,
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_fotos_consultas`
--

CREATE TABLE `tbl_fotos_consultas` (
  `ID_foto` int(11) NOT NULL,
  `ID_Cita` bigint(3) NOT NULL,
  `tipo_imagen` varchar(50) NOT NULL,
  `imagen` mediumblob NOT NULL
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
(1, 1, '0205199500032', 1, 2, 1, 1, 'PRUEBA', '2012-06-06', 8, 'PRUEBA', 55555555, 55555555, 'prueba@gmail.com', 'PRUEBA', 2, 55555555, 55555555, 'PRUEBA', 'PRUEBA', 'PRUEBA', 'PRUEBA', 'PRUEBA', NULL, NULL, NULL, NULL);

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
(1, 'USUARIODB', 'root', '0000-00-00', '0000-00-00'),
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
(1, 'Madre'),
(2, 'Padre'),
(3, 'Hermano(a)'),
(4, 'Tío(a)'),
(5, 'Primo(a)'),
(6, 'Abuelo(a)'),
(7, 'Suegro(a)'),
(8, 'Yerno'),
(9, 'Nuera'),
(10, 'Cuñado(a)'),
(11, 'Otros');

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
(6, '¿Cómo se llamaba el colegio al que asististe?', NULL, NULL, NULL, NULL),
(7, '¿Cómo se llama su tío favorito?', NULL, NULL, NULL, NULL),
(8, '¿Cómo se llama su primera escuela?', NULL, NULL, NULL, NULL),
(9, '¿Cómo se llama su tía favorita?', NULL, NULL, NULL, NULL),
(10, '¿Cuál es el nombre de su primer pareja?', NULL, NULL, NULL, NULL),
(11, '¿Cuál fue el primer libro que leíste?', NULL, NULL, NULL, NULL);

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
(53, 3, 11, 'XXX', NULL, NULL, NULL, NULL),
(55, 1, 15, 'XXX', NULL, NULL, NULL, NULL),
(56, 2, 15, 'XXX', NULL, NULL, NULL, NULL),
(57, 3, 15, 'XXX', NULL, NULL, NULL, NULL),
(58, 1, 19, 'XXX', NULL, NULL, NULL, NULL),
(59, 2, 19, 'XXX', NULL, NULL, NULL, NULL),
(60, 3, 19, 'XXX', NULL, NULL, NULL, NULL),
(64, 1, 9, 'AAA', NULL, NULL, NULL, NULL),
(65, 2, 9, 'AAA', NULL, NULL, NULL, NULL),
(66, 3, 9, 'AAA', NULL, NULL, NULL, NULL);

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
(1, 1, 1, 'ADMIN', 'soportefranclar@gmail.com', 'Franclar#2020', 1, '2020-10-04', 0, NULL, NULL, NULL, '2020-10-04', NULL, NULL, NULL, NULL, 0),
(9, 11, 1, 'JGONZALES', 'jsdiksndsdsd@gmail.com', 'Minuto#2020', 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(11, 12, 1, 'WRAMIRES', 'jidndf@gmail.com', 'Minuto#2020', 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(15, 17, 1, 'JEANNUNEZ', 'jean.nunez@gmail.com', 'Minuto#2020', 3, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(16, 18, 1, 'JOSUERAMIRES', 'jenaas.sdsd@gmail.com', 'Minuto#2020', 4, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 20, 1, 'JOSUERS', 'nuez.jeancarlos@gmail.com', 'Minuto#2020', 5, NULL, 0, NULL, '6a6ffc86c1f97e37bcfc7562e0511971', 1, NULL, NULL, NULL, NULL, NULL, 3),
(19, 21, 1, 'JEANRODRIGUEZ', 'nuez.jcarlos@gmail.com', 'Minuto#2020', 4, NULL, 0, NULL, 'cc8dec1a4e6ee94b3beea5582352d257', 1, NULL, NULL, NULL, NULL, NULL, 3);

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
-- Indices de la tabla `tbl_cobros_adicionales`
--
ALTER TABLE `tbl_cobros_adicionales`
  ADD PRIMARY KEY (`ID_cobro_adicional`);

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
  ADD PRIMARY KEY (`id_detalle`),
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
  MODIFY `id_bitacora_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tbl_cargo`
--
ALTER TABLE `tbl_cargo`
  MODIFY `ID_Cargo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tbl_citas`
--
ALTER TABLE `tbl_citas`
  MODIFY `ID_Cita` bigint(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_cobros_adicionales`
--
ALTER TABLE `tbl_cobros_adicionales`
  MODIFY `ID_cobro_adicional` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_consultas`
--
ALTER TABLE `tbl_consultas`
  MODIFY `ID_Consulta` bigint(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_detalle_factura`
--
ALTER TABLE `tbl_detalle_factura`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
  MODIFY `ID_Empleado` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `tbl_especialidad`
--
ALTER TABLE `tbl_especialidad`
  MODIFY `ID_especialidad` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tbl_estado_civil`
--
ALTER TABLE `tbl_estado_civil`
  MODIFY `ID_Est_Civil` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tbl_expediente`
--
ALTER TABLE `tbl_expediente`
  MODIFY `ID_expediente` bigint(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  MODIFY `ID_factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_fotos_consultas`
--
ALTER TABLE `tbl_fotos_consultas`
  MODIFY `ID_foto` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT de la tabla `tbl_parentesco`
--
ALTER TABLE `tbl_parentesco`
  MODIFY `ID_Parentesco` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tbl_permisos`
--
ALTER TABLE `tbl_permisos`
  MODIFY `id_permiso` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de la tabla `tbl_preclinica`
--
ALTER TABLE `tbl_preclinica`
  MODIFY `ID_Preclinica` bigint(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_preguntas`
--
ALTER TABLE `tbl_preguntas`
  MODIFY `ID_Pregunta` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tbl_pregunta_usuario`
--
ALTER TABLE `tbl_pregunta_usuario`
  MODIFY `id_pregunta_usuario` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

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
  MODIFY `ID_Usuario` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  ADD CONSTRAINT `tbl_empleado_ibfk_7` FOREIGN KEY (`ID_Especialidad`) REFERENCES `tbl_especialidad` (`ID_especialidad`) ON DELETE CASCADE ON UPDATE CASCADE,
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
  ADD CONSTRAINT `tbl_facturas_ibfk_3` FOREIGN KEY (`ID_Especialidad`) REFERENCES `tbl_especialidad` (`ID_especialidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_fotos_consultas`
--
ALTER TABLE `tbl_fotos_consultas`
  ADD CONSTRAINT `tbl_fotos_consultas_ibfk_1` FOREIGN KEY (`ID_Cita`) REFERENCES `tbl_citas` (`ID_Cita`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `tbl_usuario_ibfk_6` FOREIGN KEY (`ID_Empleado`) REFERENCES `tbl_empleado` (`ID_Empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_usuario_ibfk_7` FOREIGN KEY (`ID_Rol`) REFERENCES `tbl_roles` (`ID_Rol`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
