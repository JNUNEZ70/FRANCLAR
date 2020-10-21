-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-10-2020 a las 06:10:42
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
-- Estructura de tabla para la tabla `tbl_bitacora`
--

CREATE TABLE `tbl_bitacora` (
  `id_bitacora` int(11) NOT NULL,
  `id_tabla` text NOT NULL,
  `id_registro` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `ejecutor` varchar(20) NOT NULL,
  `actividad_realizada` varchar(100) NOT NULL,
  `informacion_actual` text NOT NULL,
  `informacion_anterior` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_bitacora`
--

INSERT INTO `tbl_bitacora` (`id_bitacora`, `id_tabla`, `id_registro`, `fecha`, `ejecutor`, `actividad_realizada`, `informacion_actual`, `informacion_anterior`) VALUES
(2, 'tbl_usuario', 1, '2020-10-03 07:43:49', 'root@localhost', 'Se insertó un nuevo usuario', 'Información insertada: 1 1JNUÑEZ123412020-10-0312020-10-03', ''),
(3, 'tbl_usuario', 1, '2020-10-03 07:48:50', 'root@localhost', 'Se insertó un nuevo usuario', 'Información insertada: 1 1 JNUÑEZ 1234 1 2020-10-03 1 2020-10-03', ''),
(4, 'tbl_usuario', 1, '2020-10-04 06:07:56', 'root@localhost', 'Se eliminó un usuario', '', 'Información eliminada: 1 1 JNUÑEZ 1234 1 2020-10-03 1 2020-10-03'),
(5, 'tbl_usuario', 1, '2020-10-04 06:09:24', 'root@localhost', 'Se insertó un nuevo usuario', 'Información insertada: 1 1 JNUÑEZ 1234 1 2020-10-04 1 2020-10-04', ''),
(6, 'tbl_usuario', 1, '2020-10-04 06:16:17', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUÑEZ 1234 1 2020-10-04 1 2020-10-04', 'Información anterior: 1 1 JNUÑEZ 1234 1 2020-10-04 1 2020-10-04'),
(7, 'tbl_empleado', 2, '2020-10-04 06:52:01', 'root@localhost', 'Se insertó un nuevo empleado', 'Información insertada: 2 2 1 1 0801199714078 EVELYN GABRIELA TORRES RAMIREZ 1997-07-06 COL VENEZUELA SETORVSSDSDSDSIUDCVNEIFVBEDIVEFVEF  22091139 33876298 nuez.jeancarlos@gmail.com 15000', ''),
(8, ' tbl_empleado', 2, '2020-10-04 08:04:03', 'root@localhost', 'Se eliminó un empleado', '', 'Información eliminada: 2 2 1 1 0801199714078 EVELYN GABRIELA TORRES RAMIREZ 1997-07-06 COL VENEZUELA SETORVSSDSDSDSIUDCVNEIFVBEDIVEFVEF  22091139 33876298 nuez.jeancarlos@gmail.com 15000'),
(9, 'tbl_empleado', 1, '2020-10-04 08:07:12', 'root@localhost', 'Se actualizó un empleado', 'Información actualizada: 1 1 1 1 0801199714079 Jean Carlos Núñez Salgado 1997-07-06 Col venezuela sector B..... 22091139 33876298 nuez.jeancarlos@gmail.com 15000', 'Información anterior: 1 1 1 1 0801199714079 Jean Carlos Núñez Ramires 1997-07-06 Col venezuela sector B..... 22091139 33876298 nuez.jeancarlos@gmail.com 15000'),
(10, 'tbl_parametros', 1, '2020-10-05 01:16:42', 'root@localhost', 'Se insertó un nuevo parámetro', 'Información insertada: ADMIN_INTENTOS 3 1 2020-10-04 2020-10-04', ''),
(11, 'tbl_parametros', 2, '2020-10-05 01:17:17', 'root@localhost', 'Se insertó un nuevo parámetro', 'Información insertada: ADMIN_PREGUNTAS 3 1 2020-10-04 2020-10-04', ''),
(12, 'tbl_parametros', 2, '2020-10-05 01:19:17', 'root@localhost', 'Se eliminó un parámetro', '', 'Información eliminada: ADMIN_PREGUNTAS 3 1 2020-10-04 2020-10-04'),
(13, 'tbl_parametros', 1, '2020-10-05 01:19:43', 'root@localhost', 'Se actualizó un parámetro', 'Información actualizada: ADMIN_INTENTOS 2 1 2020-10-04 2020-10-04', 'Información anterior: ADMIN_INTENTOS 3 1 2020-10-04 2020-10-04'),
(14, 'tbl_preguntas', 1, '2020-10-05 04:36:48', 'root@localhost', 'Se insertó una nueva pregunta', 'Información insertada: ¿Cuál es el nombre de su mamá?', ''),
(15, 'tbl_pregunta_usuario', 1, '2020-10-05 04:38:59', 'root@localhost', 'Se insertó una nueva respuesta de un usuario', 'Información insertada: 1 1 Edis', ''),
(16, 'tbl_empleado', 2, '2020-10-11 02:39:25', 'root@localhost', 'Se insertó un nuevo empleado', 'Información insertada: 1 2 1 1 0801199714078 Carlos Fabricio Núñez Ramires 1997-07-06 fffffffffffffffffffffffffffffffff 22091139 33876298 nuez.jeancarlos@gmail.com 15000', ''),
(17, 'tbl_usuario', 1, '2020-10-14 06:18:32', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ 1234 1 2020-10-04 1 2020-10-04', 'Información anterior: 1 2 JNUÑEZ 1234 1 2020-10-04 1 2020-10-04'),
(18, ' tbl_empleado', 2, '2020-10-15 03:56:04', 'root@localhost', 'Se eliminó un empleado', '', 'Información eliminada: 1 2 1 1 0801199714078 Carlos Fabricio Núñez Ramires 1997-07-06 fffffffffffffffffffffffffffffffff 22091139 33876298 nuez.jeancarlos@gmail.com 15000'),
(19, 'tbl_empleado', 3, '2020-10-15 04:57:48', 'root@localhost', 'Se insertó un nuevo empleado', 'Información insertada: 1 2 1 1 0801199714079 Carlos Fabricio Nuñez Ramires 1997-10-14 Col. Venezuela Sector B Bloque 8 casa 17 22278000 33876298  15000', ''),
(20, 'tbl_empleado', 3, '2020-10-16 05:46:45', 'root@localhost', 'Se actualizó un empleado', 'Información actualizada: 1 3 1 1  Carlos Fabricio Nuñez Ramires 0000-00-00 Col. Venezuela Sector B Bloque 8 casa 17 22278000 33876298  15000', 'Información anterior: 1 2 1 1 0801199714079 Carlos Fabricio Nuñez Ramires 1997-10-14 Col. Venezuela Sector B Bloque 8 casa 17 22278000 33876298  15000'),
(21, 'tbl_empleado', 3, '2020-10-16 05:47:01', 'root@localhost', 'Se actualizó un empleado', 'Información actualizada: 1 1 1 1  Carlos Fabricio Nuñez Ramires 0000-00-00 Col. Venezuela Sector B Bloque 8 casa 17 22278000 33876298  15000', 'Información anterior: 1 3 1 1  Carlos Fabricio Nuñez Ramires 0000-00-00 Col. Venezuela Sector B Bloque 8 casa 17 22278000 33876298  15000'),
(22, 'tbl_empleado', 8, '2020-10-16 06:20:42', 'root@localhost', 'Se insertó un nuevo empleado', 'Información insertada: 1 1 1 1 0801196800586 CARLOS HUMBERTO NUÑEZ 1963-10-14 SDOVJNBDFUVHDBFUVDFVDFVDF 22222222 99999999  15000', ''),
(23, 'tbl_empleado', 9, '2020-10-16 06:26:15', 'root@localhost', 'Se insertó un nuevo empleado', 'Información insertada: 1 5 1 1 0801199755555 JIMMY JAVIER RAMOS OSORTO 1990-10-22 SWDPIVJEFVFVDFVDFVDFS 22222222 99999999  20000', ''),
(24, 'tbl_empleado', 10, '2020-10-16 06:59:28', 'root@localhost', 'Se insertó un nuevo empleado', 'Información insertada: 3 1 2 1 0554169159651 MANUEL RAMOS 1960-10-15 VDCBGFGNFGNFG 22222222 99999999  20000', ''),
(25, ' tbl_empleado', 9, '2020-10-16 07:34:40', 'root@localhost', 'Se eliminó un empleado', '', 'Información eliminada: 1 5 1 1 0801199755555 JIMMY JAVIER RAMOS OSORTO 1990-10-22 SWDPIVJEFVFVDFVDFVDFS 22222222 99999999 20000'),
(26, 'tbl_empleado', 1, '2020-10-16 07:45:00', 'root@localhost', 'Se actualizó un empleado', 'Información actualizada: 1 2 1 1  Jean Carlos Núñez Salgado 0000-00-00 Col venezuela sector B..... 22091139 33876298 15000', 'Información anterior: 1 1 1 1 0801199714079 Jean Carlos Núñez Salgado 1997-07-06 Col venezuela sector B..... 22091139 33876298 15000'),
(27, 'tbl_empleado', 10, '2020-10-17 20:36:22', 'root@localhost', 'Se actualizó un empleado', 'Información actualizada: 3 1 2 5  MANUEL RAMOS 0000-00-00 VDCBGFGNFGNFG 22222222 99999999 20000', 'Información anterior: 3 1 2 1 0554169159651 MANUEL RAMOS 1960-10-15 VDCBGFGNFGNFG 22222222 99999999 20000'),
(28, 'tbl_empleado', 10, '2020-10-17 20:37:02', 'root@localhost', 'Se actualizó un empleado', 'Información actualizada: 1 1 2 5  MANUEL RAMOS 0000-00-00 VDCBGFGNFGNFG 22222222 99999999 20000', 'Información anterior: 3 1 2 5  MANUEL RAMOS 0000-00-00 VDCBGFGNFGNFG 22222222 99999999 20000'),
(29, 'tbl_empleado', 10, '2020-10-17 20:37:19', 'root@localhost', 'Se actualizó un empleado', 'Información actualizada: 1 5 2 5  MANUEL RAMOS 0000-00-00 VDCBGFGNFGNFG 22222222 99999999 20000', 'Información anterior: 1 1 2 5  MANUEL RAMOS 0000-00-00 VDCBGFGNFGNFG 22222222 99999999 20000'),
(30, 'tbl_empleado', 3, '2020-10-17 20:37:55', 'root@localhost', 'Se actualizó un empleado', 'Información actualizada: 1 3 2 6  Carlos Fabricio Nuñez Ramires 0000-00-00 Col. Venezuela Sector B Bloque 8 casa 17 22278000 33876298 30000', 'Información anterior: 1 1 1 1  Carlos Fabricio Nuñez Ramires 0000-00-00 Col. Venezuela Sector B Bloque 8 casa 17 22278000 33876298 15000'),
(31, ' tbl_empleado', 10, '2020-10-17 20:40:33', 'root@localhost', 'Se eliminó un empleado', '', 'Información eliminada: 1 5 2 5  MANUEL RAMOS 0000-00-00 VDCBGFGNFGNFG 22222222 99999999 20000'),
(32, 'tbl_empleado', 11, '2020-10-17 20:42:43', 'root@localhost', 'Se insertó un nuevo empleado', 'Información insertada: 1 2 3 3 0801199714588 JOSUE ALLAN GONZALES RAMIRES 1987-10-08 WINFEIUFGEFVDFVDF 22222222 99999999  20000', ''),
(33, 'tbl_usuario', 1, '2020-10-17 22:01:13', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 2020-10-04 1 2020-10-04', 'Información anterior: 1 2 JNUNEZ 1234 1 2020-10-04 1 2020-10-04'),
(34, 'tbl_usuario', 9, '2020-10-18 19:06:18', 'root@localhost', 'Se insertó un nuevo usuario', 'Información insertada: 11 1 JGONZALES OtvJY]Jf 1 1', ''),
(35, 'tbl_usuario', 1, '2020-10-18 22:36:21', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),
(36, 'tbl_usuario', 1, '2020-10-18 22:42:59', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),
(37, 'tbl_usuario', 1, '2020-10-18 22:43:29', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),
(38, 'tbl_usuario', 9, '2020-10-18 22:43:54', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 1 JGONZALES OtvJY]Jf 1 1'),
(39, 'tbl_usuario', 1, '2020-10-18 22:44:48', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),
(40, 'tbl_usuario', 9, '2020-10-18 22:45:20', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 1 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),
(41, 'tbl_usuario', 9, '2020-10-18 22:45:26', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 1 JGONZALES OtvJY]Jf 1 1'),
(42, 'tbl_usuario', 9, '2020-10-18 22:45:53', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 1 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),
(43, 'tbl_usuario', 9, '2020-10-18 23:14:52', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 1 JGONZALES OtvJY]Jf 1 1'),
(44, 'tbl_usuario', 9, '2020-10-18 23:15:27', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 1 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),
(45, 'tbl_usuario', 9, '2020-10-18 23:15:41', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 1 JGONZALES OtvJY]Jf 1 1'),
(46, 'tbl_usuario', 9, '2020-10-18 23:15:46', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),
(47, 'tbl_usuario', 9, '2020-10-18 23:16:11', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 1 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),
(48, 'tbl_usuario', 9, '2020-10-18 23:17:22', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 1 JGONZALES OtvJY]Jf 1 1'),
(49, 'tbl_usuario', 9, '2020-10-18 23:20:09', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),
(50, 'tbl_usuario', 9, '2020-10-18 23:20:47', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),
(51, 'tbl_usuario', 9, '2020-10-18 23:20:58', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),
(52, 'tbl_usuario', 9, '2020-10-18 23:23:35', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),
(53, 'tbl_usuario', 9, '2020-10-18 23:23:46', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),
(54, 'tbl_usuario', 1, '2020-10-18 23:25:07', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),
(55, 'tbl_usuario', 1, '2020-10-18 23:25:10', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),
(56, 'tbl_usuario', 1, '2020-10-18 23:25:40', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),
(57, 'tbl_usuario', 9, '2020-10-18 23:25:46', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),
(58, 'tbl_usuario', 9, '2020-10-18 23:28:01', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),
(59, 'tbl_usuario', 1, '2020-10-18 23:29:08', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),
(60, 'tbl_usuario', 9, '2020-10-18 23:30:16', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 1 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),
(61, 'tbl_usuario', 1, '2020-10-18 23:30:28', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),
(62, 'tbl_usuario', 1, '2020-10-18 23:31:45', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),
(63, 'tbl_usuario', 1, '2020-10-18 23:31:45', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),
(64, 'tbl_usuario', 1, '2020-10-18 23:31:55', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),
(65, 'tbl_usuario', 1, '2020-10-18 23:31:56', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),
(66, 'tbl_usuario', 9, '2020-10-18 23:32:02', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 1 JGONZALES OtvJY]Jf 1 1'),
(67, 'tbl_usuario', 9, '2020-10-18 23:32:02', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 1 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),
(68, 'tbl_usuario', 1, '2020-10-18 23:33:29', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),
(69, 'tbl_usuario', 1, '2020-10-18 23:33:43', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),
(70, 'tbl_usuario', 1, '2020-10-18 23:34:30', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),
(71, 'tbl_usuario', 1, '2020-10-18 23:34:40', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),
(72, 'tbl_usuario', 9, '2020-10-18 23:34:50', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 1 JGONZALES OtvJY]Jf 1 1'),
(73, 'tbl_usuario', 9, '2020-10-18 23:34:55', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 1 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),
(74, 'tbl_usuario', 9, '2020-10-18 23:37:23', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 1 JGONZALES OtvJY]Jf 1 1'),
(75, 'tbl_usuario', 1, '2020-10-18 23:37:25', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),
(76, 'tbl_usuario', 1, '2020-10-18 23:39:34', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),
(77, 'tbl_usuario', 1, '2020-10-18 23:39:49', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),
(78, 'tbl_usuario', 1, '2020-10-18 23:39:54', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),
(79, 'tbl_usuario', 1, '2020-10-18 23:41:06', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),
(80, 'tbl_usuario', 1, '2020-10-18 23:41:21', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),
(81, 'tbl_usuario', 1, '2020-10-18 23:42:57', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),
(82, 'tbl_usuario', 9, '2020-10-18 23:46:13', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 1 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),
(83, 'tbl_usuario', 1, '2020-10-18 23:46:26', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),
(84, 'tbl_usuario', 1, '2020-10-18 23:46:38', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),
(85, 'tbl_usuario', 1, '2020-10-18 23:48:02', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),
(86, 'tbl_usuario', 1, '2020-10-18 23:48:19', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),
(87, 'tbl_usuario', 1, '2020-10-19 04:44:22', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),
(88, 'tbl_usuario', 9, '2020-10-19 04:44:36', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 2 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 1 JGONZALES OtvJY]Jf 1 1'),
(89, 'tbl_usuario', 9, '2020-10-19 04:45:57', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 11 1 JGONZALES OtvJY]Jf 1 1', 'Información anterior: 11 2 JGONZALES OtvJY]Jf 1 1'),
(90, 'tbl_usuario', 1, '2020-10-19 06:31:55', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 1 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 2 JNUNEZ Franclar#2020 1 1'),
(91, 'tbl_usuario', 10, '2020-10-20 00:07:15', 'root@localhost', 'Se insertó un nuevo usuario', 'Información insertada: 8 1 CNUÑEZ Hf4,Qw9] 1 1', ''),
(92, 'tbl_usuario', 10, '2020-10-20 02:32:24', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 8 2 CNUÑEZ Hf4,Qw9] 1 1', 'Información anterior: 8 1 CNUÑEZ Hf4,Qw9] 1 1'),
(93, 'tbl_usuario', 10, '2020-10-20 02:32:31', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 8 1 CNUÑEZ Hf4,Qw9] 1 1', 'Información anterior: 8 2 CNUÑEZ Hf4,Qw9] 1 1'),
(94, 'tbl_empleado', 12, '2020-10-20 02:34:30', 'root@localhost', 'Se insertó un nuevo empleado', 'Información insertada: 1 1 5 7 0801199714078 WILDER EDUARDO RAMIRES  1982-09-05 SJDNVSDHOFIVBDVRFGBRGBRFGBGF 22222222 88888888  20000', ''),
(95, 'tbl_usuario', 11, '2020-10-20 02:35:38', 'root@localhost', 'Se insertó un nuevo usuario', 'Información insertada: 12 1 WRAMIRES Pv5{Qi0} 1 1', ''),
(96, 'tbl_usuario', 10, '2020-10-20 02:50:38', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 8 2 CNUÑEZ Hf4,Qw9] 1 1', 'Información anterior: 8 1 CNUÑEZ Hf4,Qw9] 1 1'),
(97, 'tbl_usuario', 12, '2020-10-20 04:18:37', 'root@localhost', 'Se insertó un nuevo usuario', 'Información insertada: 3 1 JNUNEZ Yv3%Vr8} 1 1', ''),
(98, 'tbl_usuario', 13, '2020-10-20 04:19:18', 'root@localhost', 'Se insertó un nuevo usuario', 'Información insertada: 3 1 JNUNEZ Ax3@Xa1& 1 1', ''),
(99, 'tbl_empleado', 14, '2020-10-20 06:37:06', 'root@localhost', 'Se insertó un nuevo empleado', 'Información insertada: 1 1 6 8 0801549841654 JEAN CARLOS RAMIRES 1980-10-19 SDNS8UDFCDSDSASAS 22222222 88888888  0', ''),
(100, 'tbl_usuario', 14, '2020-10-20 06:47:47', 'root@localhost', 'Se insertó un nuevo usuario', 'Información insertada: 14 4 JEANRAMIRESXXX Franclar#2020 5 1', ''),
(101, 'tbl_usuario', 14, '2020-10-20 06:51:36', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 14 1 JEANRAMIRESXXX Franclar#2020 5 1', 'Información anterior: 14 4 JEANRAMIRESXXX Franclar#2020 5 1'),
(102, 'tbl_usuario', 1, '2020-10-20 07:03:00', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 1 JNUNEZ Franclar#2020 1 1'),
(103, 'tbl_usuario', 1, '2020-10-20 07:03:20', 'root@localhost', 'Se actualizó un usuario', 'Información actualizada: 1 2 JNUNEZ Franclar#2020 1 1', 'Información anterior: 1 2 JNUNEZ Franclar#2020 1 1');

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
  `ID_Servicio` int(3) NOT NULL,
  `ID_Empleado` int(3) NOT NULL,
  `ID_Estado` int(3) NOT NULL,
  `Fec_Creacion` date NOT NULL,
  `Hora_Creacion` time NOT NULL,
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
  `ID_servicio` int(3) NOT NULL
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
(8, 'CARLOS HUMBERTO NUÑEZ', 1, 1, 1, 1, '0801196800586', '1963-10-14', 'SDOVJNBDFUVHDBFUVDFVDFVDF', 22222222, 99999999, 15000, NULL, NULL, NULL, NULL),
(11, 'JOSUE ALLAN GONZALES RAMIRES', 1, 2, 3, 3, '0801199714588', '1987-10-08', 'WINFEIUFGEFVDFVDF', 22222222, 99999999, 20000, NULL, NULL, NULL, NULL),
(12, 'WILDER EDUARDO RAMIRES ', 1, 1, 5, 7, '0801199714078', '1982-09-05', 'SJDNVSDHOFIVBDVRFGBRGBRFGBGF', 22222222, 88888888, 20000, NULL, NULL, NULL, NULL),
(14, 'JEAN CARLOS RAMIRES', 1, 1, 6, 8, '0801549841654', '1980-10-19', 'SDNS8UDFCDSDSASAS', 22222222, 88888888, 0, NULL, NULL, NULL, NULL);

--
-- Disparadores `tbl_empleado`
--
DELIMITER $$
CREATE TRIGGER `trgr_empleado_delete` AFTER DELETE ON `tbl_empleado` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_anterior)VALUES(' tbl_empleado',OLD.ID_Empleado,CURRENT_USER,'Se eliminó un empleado',concat('Información eliminada: ',OLD.ID_Sexo,' ',OLD.ID_Est_Civil,' ',OLD.ID_Cargo,' ',OLD.ID_Especialidad,' ',OLD.Cedula,' ',OLD.Nom_Empleado,' ',OLD.Fec_Nacimiento,' ',OLD.Dir_Empleado,' ',OLD.Tel_Empleado,' ',OLD.Cel_Empleado,' ',OLD.Salario));

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_empleado_insert` AFTER INSERT ON `tbl_empleado` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual)VALUES('tbl_empleado',NEW.ID_Empleado,CURRENT_USER,'Se insertó un nuevo empleado',concat('Información insertada: ',NEW.ID_Sexo,' ',NEW.ID_Est_Civil,' ',NEW.ID_Cargo,' ',NEW.ID_Especialidad,' ',NEW.Cedula,' ',NEW.Nom_Empleado,' ',NEW.Fec_Nacimiento,' ',NEW.Dir_Empleado,' ',NEW.Tel_Empleado,' ',NEW.Cel_Empleado,' ',' ',NEW.Salario));


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_empleado_update` AFTER UPDATE ON `tbl_empleado` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual,informacion_anterior)VALUES('tbl_empleado',OLD.ID_Empleado,CURRENT_USER,'Se actualizó un empleado',concat('Información actualizada: ',NEW.ID_Sexo,' ',NEW.ID_Est_Civil,' ',NEW.ID_Cargo,' ',NEW.ID_Especialidad,' ',NEW.Cedula,' ',NEW.Nom_Empleado,' ',NEW.Fec_Nacimiento,' ',NEW.Dir_Empleado,' ',NEW.Tel_Empleado,' ',NEW.Cel_Empleado,' ',NEW.Salario),concat('Información anterior: ',OLD.ID_Sexo,' ',OLD.ID_Est_Civil,' ',OLD.ID_Cargo,' ',OLD.ID_Especialidad,' ',OLD.Cedula,' ',OLD.Nom_Empleado,' ',OLD.Fec_Nacimiento,' ',OLD.Dir_Empleado,' ',OLD.Tel_Empleado,' ',OLD.Cel_Empleado,' ',OLD.Salario));

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_especialidad`
--

CREATE TABLE `tbl_especialidad` (
  `ID_especialidad` int(3) NOT NULL,
  `Descripcion_espec` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_especialidad`
--

INSERT INTO `tbl_especialidad` (`ID_especialidad`, `Descripcion_espec`) VALUES
(1, 'Medicina General'),
(2, 'Ortopedia'),
(3, 'Fisioterapia'),
(4, 'Nutrición'),
(5, 'Odontología'),
(6, 'Psicología'),
(7, 'Podología'),
(8, 'Auto_Registro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado_cita`
--

CREATE TABLE `tbl_estado_cita` (
  `ID_Estado` int(3) NOT NULL,
  `Descripcion` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_estado_cita`
--

INSERT INTO `tbl_estado_cita` (`ID_Estado`, `Descripcion`) VALUES
(1, 'Registrada'),
(2, 'Preclínica'),
(3, 'Pendiente'),
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
  `Antecedente personal` varchar(500) NOT NULL,
  `Antecedente familiar` varchar(500) NOT NULL,
  `Antecedente hospitalario` varchar(500) NOT NULL,
  `Antecedente alergicos` varchar(500) NOT NULL,
  `habitos` varchar(500) NOT NULL,
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
(8, 'vista_caja');

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
  `Usuario_crea` bigint(3) DEFAULT NULL,
  `Fec_crea` date DEFAULT NULL,
  `Usuario_modif` bigint(3) DEFAULT NULL,
  `Fec_modif` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_parametros`
--

CREATE TABLE `tbl_parametros` (
  `id_parametro` int(3) NOT NULL,
  `parametro` varchar(25) NOT NULL,
  `valor` varchar(25) NOT NULL,
  `id_usuario` bigint(3) NOT NULL,
  `Fec_crea` date NOT NULL,
  `Fec_modif` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_parametros`
--

INSERT INTO `tbl_parametros` (`id_parametro`, `parametro`, `valor`, `id_usuario`, `Fec_crea`, `Fec_modif`) VALUES
(1, 'ADMIN_INTENTOS', '2', 1, '2020-10-04', '2020-10-04');

--
-- Disparadores `tbl_parametros`
--
DELIMITER $$
CREATE TRIGGER `trgr_parametro_delete` AFTER DELETE ON `tbl_parametros` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_anterior)VALUES('tbl_parametros',OLD.id_parametro,CURRENT_USER,'Se eliminó un parámetro',concat('Información eliminada: ',OLD.parametro,' ',OLD.valor,' ',OLD.id_usuario,' ',OLD.Fec_crea,' ',OLD.Fec_modif));

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_parametro_insert` AFTER INSERT ON `tbl_parametros` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual)VALUES('tbl_parametros',NEW.id_parametro,CURRENT_USER,'Se insertó un nuevo parámetro',concat('Información insertada: ',NEW.parametro,' ',NEW.valor,' ',NEW.id_usuario,' ',NEW.Fec_crea,' ',NEW.Fec_modif));

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_parametro_update` AFTER UPDATE ON `tbl_parametros` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual,informacion_anterior)VALUES('tbl_parametros',OLD.id_parametro,CURRENT_USER,'Se actualizó un parámetro',concat('Información actualizada: ',NEW.parametro,' ',NEW.valor,' ',NEW.id_usuario,' ',NEW.Fec_crea,' ',NEW.Fec_modif),concat('Información anterior: ',OLD.parametro,' ',OLD.valor,' ',OLD.id_usuario,' ',OLD.Fec_crea,' ',OLD.Fec_modif));

END
$$
DELIMITER ;

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
(1, '¿Cuál es el nombre de su mamá?', 0, '0000-00-00', 0, '0000-00-00');

--
-- Disparadores `tbl_preguntas`
--
DELIMITER $$
CREATE TRIGGER `trgr_preguntas_delete` AFTER DELETE ON `tbl_preguntas` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_anterior)VALUES('tbl_preguntas',OLD.ID_Pregunta,CURRENT_USER,'Se eliminó una pregunta',concat('Información eliminada: ',OLD.Pregunta));

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_preguntas_insert` AFTER INSERT ON `tbl_preguntas` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual)VALUES('tbl_preguntas',NEW.ID_Pregunta,CURRENT_USER,'Se insertó una nueva pregunta',concat('Información insertada: ',NEW.Pregunta));

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_preguntas_update` AFTER UPDATE ON `tbl_preguntas` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual,informacion_anterior)VALUES('tbl_preguntas',OLD.ID_Pregunta,CURRENT_USER,'Se actualizó una nueva pregunta',concat('Información actualizada: ',NEW.Pregunta),concat('Información anterior: ',OLD.Pregunta));


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
(1, 1, 1, 'Edis', NULL, NULL, NULL, NULL);

--
-- Disparadores `tbl_pregunta_usuario`
--
DELIMITER $$
CREATE TRIGGER `trgr_preguntas_usuario_delete` AFTER DELETE ON `tbl_pregunta_usuario` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_anterior)VALUES('tbl_pregunta_usuario',OLD.id_pregunta_usuario,CURRENT_USER,'Se eliminó una respuesta de un usuario',concat('Información eliminada: ',OLD.ID_Pregunta,' ',OLD.ID_Usuario,' ',OLD.Respuesta));

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_preguntas_usuario_insert` AFTER INSERT ON `tbl_pregunta_usuario` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual)VALUES('tbl_pregunta_usuario',NEW.id_pregunta_usuario,CURRENT_USER,'Se insertó una nueva respuesta de un usuario',concat('Información insertada: ',NEW.ID_Pregunta,' ',NEW.ID_Usuario,' ',NEW.Respuesta));

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_preguntas_usuario_update` AFTER UPDATE ON `tbl_pregunta_usuario` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual,informacion_anterior)VALUES('tbl_pregunta_usuario',NEW.id_pregunta_usuario,CURRENT_USER,'Se actualizó una respuesta de un usuario',concat('Información actualizada: ',NEW.ID_Pregunta,' ',NEW.ID_Usuario,' ',NEW.Respuesta),concat('Información anterior: ',OLD.ID_Pregunta,' ',OLD.ID_Usuario,' ',OLD.Respuesta));

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_religion`
--

CREATE TABLE `tbl_religion` (
  `ID_Religion` int(3) NOT NULL,
  `Descripción` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_religion`
--

INSERT INTO `tbl_religion` (`ID_Religion`, `Descripción`) VALUES
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
  `Descripcion` varchar(50) NOT NULL,
  `Precio` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `Descripción` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_sangre`
--

CREATE TABLE `tbl_tipo_sangre` (
  `ID_Tipo_Sangre` int(3) NOT NULL,
  `Descripción` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_tipo_sangre`
--

INSERT INTO `tbl_tipo_sangre` (`ID_Tipo_Sangre`, `Descripción`) VALUES
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
  `Fec_modif` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`ID_Usuario`, `ID_Empleado`, `ID_Estado`, `Nom_Usuario`, `email`, `Contraseña`, `ID_Rol`, `Ult_Conexion`, `Primer_Ingreso`, `Fec_venc`, `Usuario_crea`, `Fec_crea`, `Usuario_modif`, `Fec_modif`) VALUES
(1, 1, 2, 'JNUNEZ', '', 'Franclar#2020', 1, '2020-10-04', 1, '2020-10-04', NULL, NULL, NULL, NULL),
(9, 11, 1, 'JGONZALES', 'jsdiksndsdsd@gmail.com', 'OtvJY]Jf', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(10, 8, 2, 'CNUÑEZ', 'dvsdfvdfvdf@gmail.com', 'Hf4,Qw9]', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(11, 12, 1, 'WRAMIRES', 'jidndf@gmail.com', 'Pv5{Qi0}', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(12, 3, 1, 'JNUNEZ', 'sdsdsdsd@gmail.com', 'Yv3%Vr8}', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(13, 3, 1, 'JNUNEZ', 'jsdsdsd@gmail.com', 'Ax3@Xa1&', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(14, 14, 1, 'JEANRAMIRESXXX', 'jeansdsd@gmail.com', 'Franclar#2020', 5, NULL, 1, NULL, NULL, NULL, NULL, NULL);

--
-- Disparadores `tbl_usuario`
--
DELIMITER $$
CREATE TRIGGER `trgr_usuario_delete` AFTER DELETE ON `tbl_usuario` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_anterior)VALUES('tbl_usuario',OLD.ID_Usuario,CURRENT_USER,'Se eliminó un usuario',concat('Información eliminada: ',OLD.ID_Empleado,' ',OLD.ID_Estado,' ',OLD.Nom_Usuario,' ',OLD.Contraseña,' ',OLD.ID_Rol,' ',OLD.Primer_Ingreso));


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_usuario_insert` AFTER INSERT ON `tbl_usuario` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual)VALUES('tbl_usuario',NEW.ID_Usuario,CURRENT_USER,'Se insertó un nuevo usuario',concat('Información insertada: ',NEW.ID_Empleado,' ',NEW.ID_Estado,' ',NEW.Nom_Usuario,' ',NEW.Contraseña,' ',NEW.ID_Rol,' ',NEW.Primer_Ingreso));

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_usuario_update` AFTER UPDATE ON `tbl_usuario` FOR EACH ROW BEGIN

INSERT INTO tbl_bitacora(id_tabla,id_registro,ejecutor,actividad_realizada,informacion_actual,informacion_anterior)VALUES('tbl_usuario',OLD.ID_Usuario,CURRENT_USER,'Se actualizó un usuario',concat('Información actualizada: ',NEW.ID_Empleado,' ',NEW.ID_Estado,' ',NEW.Nom_Usuario,' ',NEW.Contraseña,' ',NEW.ID_Rol,' ',NEW.Primer_Ingreso),concat('Información anterior: ',OLD.ID_Empleado,' ',OLD.ID_Estado,' ',OLD.Nom_Usuario,' ',OLD.Contraseña,' ',OLD.ID_Rol,' ',OLD.Primer_Ingreso));

END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_bitacora`
--
ALTER TABLE `tbl_bitacora`
  ADD PRIMARY KEY (`id_bitacora`);

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
  ADD KEY `ID_Servicio` (`ID_Servicio`),
  ADD KEY `ID_Empleado` (`ID_Empleado`),
  ADD KEY `ID_Estado` (`ID_Estado`);

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
  ADD KEY `ID_servicio` (`ID_servicio`);

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
-- AUTO_INCREMENT de la tabla `tbl_bitacora`
--
ALTER TABLE `tbl_bitacora`
  MODIFY `id_bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `tbl_cargo`
--
ALTER TABLE `tbl_cargo`
  MODIFY `ID_Cargo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_citas`
--
ALTER TABLE `tbl_citas`
  MODIFY `ID_Cita` bigint(3) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT de la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
  MODIFY `ID_Empleado` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `ID_Paciente` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_parametros`
--
ALTER TABLE `tbl_parametros`
  MODIFY `id_parametro` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `ID_Pregunta` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_pregunta_usuario`
--
ALTER TABLE `tbl_pregunta_usuario`
  MODIFY `id_pregunta_usuario` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `ID_Usuario` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_citas`
--
ALTER TABLE `tbl_citas`
  ADD CONSTRAINT `tbl_citas_ibfk_2` FOREIGN KEY (`ID_Servicio`) REFERENCES `tbl_servicio` (`ID_Servicio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_citas_ibfk_4` FOREIGN KEY (`ID_Estado`) REFERENCES `tbl_estado_cita` (`ID_Estado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_citas_ibfk_5` FOREIGN KEY (`ID_Usuario`) REFERENCES `tbl_usuario` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_citas_ibfk_6` FOREIGN KEY (`ID_Empleado`) REFERENCES `tbl_empleado` (`ID_Empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_citas_ibfk_7` FOREIGN KEY (`ID_Paciente`) REFERENCES `tbl_pacientes` (`ID_Paciente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_consultas`
--
ALTER TABLE `tbl_consultas`
  ADD CONSTRAINT `tbl_consultas_ibfk_2` FOREIGN KEY (`ID_Diagnostico`) REFERENCES `tbl_diagnosticos` (`ID_Diagnostico`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_consultas_ibfk_3` FOREIGN KEY (`ID_Cita`) REFERENCES `tbl_citas` (`ID_Cita`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_detalle_factura`
--
ALTER TABLE `tbl_detalle_factura`
  ADD CONSTRAINT `tbl_detalle_factura_ibfk_2` FOREIGN KEY (`ID_servicio`) REFERENCES `tbl_servicio` (`ID_Servicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detalle_factura_ibfk_3` FOREIGN KEY (`ID_factura`) REFERENCES `tbl_facturas` (`ID_factura`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
  ADD CONSTRAINT `tbl_empleado_ibfk_2` FOREIGN KEY (`ID_Est_Civil`) REFERENCES `tbl_estado_civil` (`ID_Est_Civil`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_empleado_ibfk_4` FOREIGN KEY (`ID_Especialidad`) REFERENCES `tbl_especialidad` (`ID_especialidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_empleado_ibfk_5` FOREIGN KEY (`ID_Sexo`) REFERENCES `tbl_sexo` (`ID_Sexo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_empleado_ibfk_6` FOREIGN KEY (`ID_Cargo`) REFERENCES `tbl_cargo` (`ID_Cargo`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `tbl_pacientes_ibfk_1` FOREIGN KEY (`ID_TipoPaciente`) REFERENCES `tbl_tipo_paciente` (`ID_TipoPaciente`),
  ADD CONSTRAINT `tbl_pacientes_ibfk_2` FOREIGN KEY (`ID_Tipo_Sangre`) REFERENCES `tbl_tipo_sangre` (`ID_Tipo_Sangre`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pacientes_ibfk_4` FOREIGN KEY (`ID_Est_Civil`) REFERENCES `tbl_estado_civil` (`ID_Est_Civil`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pacientes_ibfk_5` FOREIGN KEY (`ID_Religion`) REFERENCES `tbl_religion` (`ID_Religion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pacientes_ibfk_6` FOREIGN KEY (`ID_Sexo`) REFERENCES `tbl_sexo` (`ID_Sexo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_parametros`
--
ALTER TABLE `tbl_parametros`
  ADD CONSTRAINT `tbl_parametros_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`ID_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

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
